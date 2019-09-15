package sarftests.noun;

import com.google.inject.Inject;
import sarftests.RootType;
import sarftests.noun.tri.augmented.AugmentedActiveParticipleNounProvider;
import sarftests.noun.tri.augmented.AugmentedPassiveParticipleNounProvider;
import sarftests.noun.tri.augmented.AugmentedTimeAndPlaceNounProvider;
import sarftests.noun.tri.augmented.gerund.AugmentedGerundNounProvider;
import sarftests.noun.tri.unaugmented.*;
import sarftests.noun.tri.unaugmented.gerund.GerundNounProvider;
import sarftests.noun.tri.unaugmented.gerund.MeemGerundNounProvider;
import sarftests.noun.tri.unaugmented.gerund.NomenGerundNounProvider;
import sarftests.noun.tri.unaugmented.gerund.QualityGerundNounProvider;

public class NounProviderFactory {
    private final ActiveParticipleNounProvider activeParticipleNounProvider;
    private final PassiveParticipleNounProvider passiveParticipleNounProvider;
    private final EmphasizedActiveParticipleNounProvider emphasizedActiveParticipleNounProvider;
    private final TimeAndPlaceNounProvider timeAndPlaceNounProvider;
    private final InstrumentNounProvider instrumentNounProvider;
    private final AssimilateNounProvider assimilateNounProvider;
    private final ElativeNounProvider elativeNounProvider;
    private final GerundNounProvider gerundNounProvider;
    private final MeemGerundNounProvider meemGerundNounProvider;
    private final NomenGerundNounProvider nomenGerundNounProvider;
    private final QualityGerundNounProvider qualityGerundNounProvider;

    private final AugmentedActiveParticipleNounProvider augmentedActiveParticipleNounProvider;
    private final AugmentedPassiveParticipleNounProvider augmentedPassiveParticipleNounProvider;
    private final AugmentedTimeAndPlaceNounProvider augmentedTimeAndPlaceNounProvider;
    private final AugmentedGerundNounProvider augmentedGerundNounProvider;

    @Inject
    public NounProviderFactory(ActiveParticipleNounProvider activeParticipleNounProvider
            , PassiveParticipleNounProvider passiveParticipleNounProvider
            , EmphasizedActiveParticipleNounProvider emphasizedActiveParticipleNounProvider
            , TimeAndPlaceNounProvider timeAndPlaceNounProvider
            , InstrumentNounProvider instrumentNounProvider
            , AssimilateNounProvider assimilateNounProvider
            , ElativeNounProvider elativeNounProvider
            , GerundNounProvider gerundNounProvider
            , MeemGerundNounProvider meemGerundNounProvider, NomenGerundNounProvider nomenGerundNounProvider
            , QualityGerundNounProvider qualityGerundNounProvider
            , AugmentedActiveParticipleNounProvider augmentedActiveParticipleNounProvider
            , AugmentedPassiveParticipleNounProvider augmentedPassiveParticipleNounProvider
            , AugmentedTimeAndPlaceNounProvider augmentedTimeAndPlaceNounProvider
            , AugmentedGerundNounProvider augmentedGerundNounProvider){
        this.activeParticipleNounProvider = activeParticipleNounProvider;
        this.passiveParticipleNounProvider = passiveParticipleNounProvider;
        this.emphasizedActiveParticipleNounProvider = emphasizedActiveParticipleNounProvider;
        this.timeAndPlaceNounProvider = timeAndPlaceNounProvider;
        this.instrumentNounProvider = instrumentNounProvider;
        this.assimilateNounProvider = assimilateNounProvider;
        this.elativeNounProvider = elativeNounProvider;
        this.gerundNounProvider = gerundNounProvider;
        this.meemGerundNounProvider = meemGerundNounProvider;
        this.nomenGerundNounProvider = nomenGerundNounProvider;
        this.qualityGerundNounProvider = qualityGerundNounProvider;
        this.augmentedActiveParticipleNounProvider = augmentedActiveParticipleNounProvider;
        this.augmentedPassiveParticipleNounProvider = augmentedPassiveParticipleNounProvider;
        this.augmentedTimeAndPlaceNounProvider = augmentedTimeAndPlaceNounProvider;
        this.augmentedGerundNounProvider = augmentedGerundNounProvider;
    }

    public INounProvider create(RootType rootType, NounType nounType){
        if(rootType == RootType.TrilateralUnaugmented){
            return createTrilateralUnaugmented(nounType);
        }
        if(rootType == RootType.TrilateralAugmented){
            return createTrilateralAugmented(nounType);
        }
        return null;
    }

    private INounProvider createTrilateralUnaugmented(NounType nounType) {
        switch (nounType){
            case ActiveParticiple:
                return activeParticipleNounProvider;
            case PassiveParticiple:
                return  passiveParticipleNounProvider;
            case EmphasizedActiveParticiple:
                return emphasizedActiveParticipleNounProvider;
            case TimeAndPlace:
                return timeAndPlaceNounProvider;
            case Instrument:
                return instrumentNounProvider;
            case Assimilate:
                return assimilateNounProvider;
            case Elative:
                return elativeNounProvider;
            case Gerund:
                return gerundNounProvider;
            case MeemGerund:
                return meemGerundNounProvider;
            case NomenGerund:
                return nomenGerundNounProvider;
            case QualityGerund:
                return qualityGerundNounProvider;
        }
        return null;
    }

    private INounProvider createTrilateralAugmented(NounType nounType) {
        switch (nounType){
            case ActiveParticiple:
                return augmentedActiveParticipleNounProvider;
            case PassiveParticiple:
                return augmentedPassiveParticipleNounProvider;
            case TimeAndPlace:
                return augmentedTimeAndPlaceNounProvider;
            case Gerund:
                return augmentedGerundNounProvider;
        }
        return null;
    }
}
