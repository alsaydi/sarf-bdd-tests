package sarftests.verb.quad.unaugmented.active;

import com.google.inject.Inject;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import sarf.SarfDictionary;
import sarf.SystemConstants;
import sarf.kov.KovRulesManager;
import sarf.verb.quadriliteral.modifier.QuadrilateralModifier;
import sarf.verb.quadriliteral.unaugmented.UnaugmentedImperativeConjugator;
import sarf.verb.quadriliteral.unaugmented.active.ActivePresentConjugator;
import sarf.verb.quadriliteral.unaugmented.active.ActivePresentVerb;
import sarf.verb.quadriliteral.unaugmented.active.QuadriActivePastConjugator;
import sarftests.PronounIndex;
import sarftests.TestContext;
import sarftests.VerbState;

import java.util.ArrayList;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.fail;

public class UnaugmentedPresentConjugationSteps {

    private final TestContext testContext;
    private final SarfDictionary sarfDictionary;
    private final KovRulesManager kovRulesManager;

    @Inject
    public UnaugmentedPresentConjugationSteps(TestContext testContext
            , SarfDictionary sarfDictionary
            , KovRulesManager kovRulesManager) {
        this.testContext = testContext;
        this.sarfDictionary = sarfDictionary;
        this.kovRulesManager = kovRulesManager;
    }

    @When("the quadrilateral verb is conjugated in {string} state")
    public void theQuadrilateralVerbIsConjugatedInState(String state) {
        this.testContext.VerbState = VerbState.valueOf(state);
    }

    @Then("first person singular present conjugation the verb {string} is {string}")
    public void firstPersonSingularPresentConjugationTheVerbIs(String verb, String expected) {
        assertConjugations(verb, expected, PronounIndex.FirstPersonSingular);
    }

    @And("first person plural present conjugation the verb {string} is {string}")
    public void firstPersonPluralPresentConjugationTheVerbIs(String verb, String expected) {
        assertConjugations(verb, expected, PronounIndex.FirstPersonPlural);
    }

    @And("masculine singular second person present conjugation the verb {string} is {string}")
    public void masculineSingularSecondPersonPresentConjugationTheVerbIs(String verb, String expected) {
        assertConjugations(verb, expected, PronounIndex.SecondPersonMasculineSingular);
    }

    @And("feminine singular second person present conjugation the verb {string} is {string}")
    public void feminineSingularSecondPersonPresentConjugationTheVerbIs(String verb, String expected) {
        assertConjugations(verb, expected, PronounIndex.SecondPersonFeminineSingular);
    }

    @And("masculine dual second person present conjugation the verb {string} is {string}")
    public void masculineDualSecondPersonPresentConjugationTheVerbIs(String verb, String expected) {
        assertConjugations(verb, expected, PronounIndex.SecondPersonDual);
    }

    @And("masculine plural second person present conjugation the verb {string} is {string}")
    public void masculinePluralSecondPersonPresentConjugationTheVerbIs(String verb, String expected) {
        assertConjugations(verb, expected, PronounIndex.SecondPersonMasculinePlural);
    }

    @And("feminine plural second person present conjugation the verb {string} is {string}")
    public void femininePluralSecondPersonPresentConjugationTheVerbIs(String verb, String expected) {
        assertConjugations(verb, expected, PronounIndex.SecondPersonFemininePlural);
    }

    @And("masculine singular third person present conjugation the verb {string} is {string}")
    public void masculineSingularThirdPersonPresentConjugationTheVerbIs(String verb, String expected) {
        assertConjugations(verb, expected, PronounIndex.ThirdPersonMasculineSingular);
    }

    @And("feminine singular third person present conjugation the verb {string} is {string}")
    public void feminineSingularThirdPersonPresentConjugationTheVerbIs(String verb, String expected) {
        assertConjugations(verb, expected, PronounIndex.ThirdPersonFeminineSingular);
    }

    @And("masculine dual third person present conjugation the verb {string} is {string}")
    public void masculineDualThirdPersonPresentConjugationTheVerbIs(String verb, String expected) {
        assertConjugations(verb, expected, PronounIndex.ThirdPersonMasculineDual);
    }

    @And("feminine dual third person present conjugation the verb {string} is {string}")
    public void feminineDualThirdPersonPresentConjugationTheVerbIs(String verb, String expected) {
        assertConjugations(verb, expected, PronounIndex.ThirdPersonFeminineDual);
    }

    @And("masculine plural third person present conjugation the verb {string} is {string}")
    public void masculinePluralThirdPersonPresentConjugationTheVerbIs(String verb, String expected) {
        assertConjugations(verb, expected, PronounIndex.ThirdPersonMasculinePlural);
    }

    @And("feminine plural third person present conjugation the verb {string} is {string}")
    public void femininePluralThirdPersonPresentConjugationTheVerbIs(String verb, String expected) {
        assertConjugations(verb, expected, PronounIndex.ThirdPersonFemininePlural);
    }

    private void assertConjugations(String rootLetters, String expected, PronounIndex pronounIndex) {
        var verbs = getVerbs(rootLetters);
        assertThat(verbs).isNotNull();
        assertThat(verbs.size()).isEqualTo(13);
        assertThat(verbs.get(pronounIndex.getValue())).isEqualTo(expected);
    }

    private List<String> getVerbs(String rootLetters){
        try {
            var root = sarfDictionary.getUnaugmentedQuadrilateralRoot(rootLetters);
            var kovRule = kovRulesManager.getQuadrilateralKovRule(root.getC1(), root.getC2(), root.getC3(), root.getC4());
            List<ActivePresentVerb> verbs = new ArrayList<>();
            var tense = SystemConstants.PRESENT_TENSE;
            switch (testContext.VerbState) {
                case Nominative:
                    verbs = ActivePresentConjugator.getInstance().createNominativeVerbList(root);
                    break;
                case Accusative:
                    verbs = ActivePresentConjugator.getInstance().createAccusativeVerbList(root);
                    break;
                case Jussive:
                    verbs = ActivePresentConjugator.getInstance().createJussiveVerbList(root);
                    break;
                case Emphasized:
                    verbs = ActivePresentConjugator.getInstance().createEmphasizedVerbList(root);
                    break;
                case Imperative:
                    verbs = UnaugmentedImperativeConjugator.getInstance().createVerbList(root);
                    tense = SystemConstants.NOT_EMPHASIZED_IMPERATIVE_TENSE;
                    break;
                default:
                    fail("Invalid verb state: " + testContext.VerbState);
            }

            var conjugationResult = QuadrilateralModifier.getInstance().build(root, 0, kovRule.getKov(), verbs
                    , tense, true, true)
                    .getFinalResult();
            var result = new ArrayList<String>();
            for(var v : conjugationResult){
                if(v == null){
                    result.add("");
                    continue;
                }
                result.add(v.toString());
            }
            return result;
        }
        catch (Exception e){
            fail(e.getMessage());
        }
        return null;
    }
}
