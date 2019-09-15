package sarftests.noun.tri.augmented.gerund;

import com.google.inject.Inject;
import sarf.SarfDictionary;
import sarf.gerund.modifier.trilateral.augmented.standard.TrilateralAugmentedStandardModifier;
import sarf.gerund.trilateral.augmented.TrilateralAugmentedGerund;
import sarf.gerund.trilateral.augmented.TrilateralAugmentedGerundConjugator;
import sarf.gerund.trilateral.augmented.nomen.TrilateralAugmentedNomenGerund;
import sarf.gerund.trilateral.augmented.nomen.TrilateralAugmentedNomenGerundConjugator;
import sarftests.noun.INounProvider;
import sarftests.verb.tri.Common;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class AugmentedNomenGerundNounProvider implements INounProvider {

    private final SarfDictionary sarfDictionary;
    private final Common common;
    private final TrilateralAugmentedNomenGerundConjugator conjugator;
    private final TrilateralAugmentedStandardModifier modifier;

    @Inject
    public AugmentedNomenGerundNounProvider(SarfDictionary sarfDictionary, Common common, TrilateralAugmentedNomenGerundConjugator conjugator
    , TrilateralAugmentedStandardModifier modifier){
        this.sarfDictionary = sarfDictionary;
        this.common = common;
        this.conjugator = conjugator;
        this.modifier = modifier;
    }

    @Override
    public List<String> getNouns(String rootLetters, String formula, int conjugation) {
        return null;
    }

    @Override
    public List<String> getNouns(String rootLetters, int formula) {
        try {
            var augmentedRoot = sarfDictionary.getAugmentedTrilateralRoot(rootLetters);
            var kov = common.getKindOfVerb(rootLetters);
            var gerunds = conjugator.createGerundList(augmentedRoot, formula);
            var gerundString = gerunds.stream().map(TrilateralAugmentedNomenGerund::toString).collect(Collectors.toList());
            var conjugationResult = modifier.build(augmentedRoot, kov, formula, gerundString, () -> true).getFinalResult();
            var result = new ArrayList<String>();
            for (var n : conjugationResult) {
                result.add(n.toString());
            }
            return result;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
