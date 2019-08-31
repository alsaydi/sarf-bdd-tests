package sarftests.noun.tri.unaugmented;

import sarf.noun.trilateral.unaugmented.UnaugmentedTrilateralActiveParticipleConjugator;
import sarf.noun.trilateral.unaugmented.modifier.activeparticiple.ActiveParticipleModifier;
import sarftests.noun.INounProvider;
import sarftests.verb.tri.Common;

import java.util.ArrayList;
import java.util.List;

public class ActiveParticipleNounProvider implements INounProvider {

    @Override
    public List<String> getNouns(String rootLetters, int conjugation) {
        var kov = Common.getKindOfVerb(rootLetters);
        var root = Common.createRoot(rootLetters, conjugation);
        var rawNouns = UnaugmentedTrilateralActiveParticipleConjugator.getInstance().createNounList(root, null); /* there is only one formula */
        var conjugationResult = ActiveParticipleModifier.getInstance().build(root, kov, rawNouns, null  );
        var nouns = new ArrayList<String>();
        for(var n : conjugationResult.getFinalResult()){
            nouns.add(n.toString());
        }
        return nouns;
    }
}
