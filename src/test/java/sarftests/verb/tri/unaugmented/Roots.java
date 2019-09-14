package sarftests.verb.tri.unaugmented;

import com.google.inject.Inject;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import sarf.KindOfVerb;
import sarf.SarfDictionary;
import sarf.SystemConstants;
import sarf.kov.KovRulesManager;
import sarf.kov.TrilateralKovRule;
import sarf.verb.trilateral.unaugmented.UnaugmentedTrilateralRoot;
import sarf.verb.trilateral.unaugmented.modifier.UnaugmentedTrilateralModifier;
import sarf.verb.trilateral.unaugmented.active.ActivePastConjugator;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import static org.assertj.core.api.Assertions.assertThat;

public class Roots {
    private final SarfDictionary sarfDictionary;
    private final KovRulesManager kovRulesManager;
    private final ActivePastConjugator activePastConjugator;

    @Inject
    public Roots(SarfDictionary sarfDictionary, KovRulesManager kovRulesManager, ActivePastConjugator activePastConjugator){
        this.sarfDictionary = sarfDictionary;
        this.kovRulesManager = kovRulesManager;
        this.activePastConjugator = activePastConjugator;
    }

    @When("I request all roots")
    public void iRequestAllRoots() {
    }

    @Then("for a verb {string} all tasareef {string} are returned")
    public void forAVerbAllTasareefAreReturned(String root, String csvTasareef) throws Exception {
        List<UnaugmentedTrilateralRoot> unaugmentedList = sarfDictionary.getUnaugmentedTrilateralRoots(root);

        var tasareefGroups = csvTasareef.split(",");
        assertThat(unaugmentedList).isNotNull();
        assertThat(unaugmentedList.size()).isEqualTo(tasareefGroups.length);

        for (var i = 0; i < tasareefGroups.length; i++){
            var tasreef = tasareefGroups[i].split(" ");
            var expectedPast = tasreef[0];
            var expectedPresent = tasreef[1];
            var transitivity = tasreef[2];
            var kov = getKindOfVerb(root);

            var currentRoot = unaugmentedList.get(i);
            var actualPast = getPastRootText(currentRoot, kov);
            assertThat(actualPast).isEqualTo(expectedPast);

            var actualPresent = getPresentRootText(currentRoot, kov);
            assertThat(actualPresent).isEqualTo(expectedPresent);

            var actualTransitivityValue = getTransitiveDescription(currentRoot.getTransitive());
            assertThat(actualTransitivityValue).isEqualTo(transitivity);
        }
    }

    private KindOfVerb getKindOfVerb(String root){
        var rule = kovRulesManager.getTrilateralKovRule(root.charAt(0), root.charAt(1), root.charAt(2));
        return rule.getKov();
    };

    private static String getTransitiveDescription(String type) {
        if (type.equals("م")) return "متعد";
        if (type.equals("ل")) return "لازم";
        if (type.equals("ك")) return "كلاهما";
        throw new IllegalArgumentException("نوع رمز اللزوم و التعدي غير معروف");
    }

    private String getPastRootText(UnaugmentedTrilateralRoot root, KindOfVerb kov) {
        String pastRootText = activePastConjugator.createVerb(7, root).toString();
        List<String> conjugations = createEmptyList();
        conjugations.set(7, pastRootText);
        sarf.verb.trilateral.unaugmented.ConjugationResult conjResult = UnaugmentedTrilateralModifier
                .getInstance()
                .build(root, kov, conjugations, SystemConstants.PAST_TENSE, true);
        return conjResult.getFinalResult().get(7).toString();
    }

    private String getPresentRootText(UnaugmentedTrilateralRoot root, KindOfVerb kov){
        //present text formatting
        String presentRootText = sarf.verb.trilateral.unaugmented.active.ActivePresentConjugator.getInstance().createNominativeVerb(7, root).toString();
        List<String> conjugations = createEmptyList();
        conjugations.set(7, presentRootText);
        sarf.verb.trilateral.unaugmented.ConjugationResult conjResult = UnaugmentedTrilateralModifier
                .getInstance()
                .build(root, kov, conjugations, SystemConstants.PRESENT_TENSE, true);
        return conjResult.getFinalResult().get(7).toString();

    }

    private static List<String> createEmptyList() {
        return IntStream.range(0,13)
                .mapToObj(a -> "")
                .collect(Collectors.toList());
    }
}
