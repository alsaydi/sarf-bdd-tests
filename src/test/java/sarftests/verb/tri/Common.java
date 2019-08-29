package sarftests.verb.tri;

import sarf.KindOfVerb;
import sarf.SarfDictionary;
import sarf.kov.KovRulesManager;
import sarf.verb.trilateral.unaugmented.UnaugmentedTrilateralRoot;

import java.util.List;

import static org.assertj.core.api.Assertions.fail;

public final class Common {
    public static UnaugmentedTrilateralRoot createRoot(String verb, int conjugation) {
        List<UnaugmentedTrilateralRoot> unaugmentedList = null;
        try {
            unaugmentedList = SarfDictionary.getInstance().getUnaugmentedTrilateralRoots(verb);
        } catch (Exception e) {
            e.printStackTrace();
            fail(e.getMessage());
        }
        assert unaugmentedList != null;
        return unaugmentedList.stream()
                .filter(r -> r.getConjugation().getValue() == conjugation)
                .findFirst().orElseThrow();
    }

    public static KindOfVerb getKindOfVerb(String rootLetters) {
        var rule = KovRulesManager.getInstance().getTrilateralKovRule(rootLetters.charAt(0), rootLetters.charAt(1), rootLetters.charAt(2));
        return rule.getKov();
    }
}
