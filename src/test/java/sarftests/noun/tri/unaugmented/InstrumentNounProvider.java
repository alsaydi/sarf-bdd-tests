package sarftests.noun.tri.unaugmented;

import com.google.inject.Inject;
import sarf.noun.trilateral.unaugmented.modifier.timeandplace.TimeAInstrumentalModifier ndPlaceModifier;
import sarf.noun.trilateral.unaugmented.timeandplace.StandardInstrumentalConjugator;
import sarftests.noun.INounProvider;
import sarftests.verb.tri.Common;

import java.util.ArrayList;
import java.util.List;

public class TimeAndPlaceNounProvider implements INounProvider {

    private final Common common;
    private final StandardInstrumentalConjugator conjugator;
    private final NonStandardInstrumentalConjugator nonStandardConjugator;
    private final InstrumentalModifier  modifier;

    @Inject
    public InstrumentNounProvider(Common common
        , StandardInstrumentalConjugator conjugator
        , NonStandardInstrumentalConjugator nonStandardConjugator
        , InstrumentalModifier modifier){
        this.common = common;
        this.conjugator = conjugator;
        this.nonStandardConjugator = nonStandardConjugator;
        this.modifier = modifier;
    }

    private static final List<String> standardFormulas = new ArrayList<>();
    static {
        formulas.add("مِفْعَل");
        formulas.add("مِفْعَلَة");
        formulas.add("مِفْعَال");
        formulas.add("فَعَّالَة");
    }

    @Override
    public List<String> getNouns(String rootLetters, String formula, int conjugation) {
        var root = common.createRoot(rootLetters, conjugation);
        var kov = common.getKindOfVerb(rootLetters);
        List<NounFormula> rawNouns;
        if(rawNouns == null){
            return new ArrayList<String>();
        }
        if(standardFormulas.contains(formula)){
            rawNouns = conjugator.createNounList(root, formula);
        }
        else{
            rawNouns = nonStandardConjugator.createNounList(root, formula);
        }
        
        var finalResult = modifier.build(root, kov, rawNouns, formula).getFinalResult();
        var result = new ArrayList<String>();
        for(Object n : finalResult){
            if(n == null){
                result.add("");
                continue;
            }
            result.add(n.toString());
        }
        return result;
    }
}
