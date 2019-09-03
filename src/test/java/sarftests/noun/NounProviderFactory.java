package sarftests.noun;

import com.google.inject.Inject;
import sarftests.RootType;
import sarftests.noun.tri.unaugmented.*;
import sarftests.noun.tri.unaugmented.Gerund.GerundNounProvider;
import sarftests.noun.tri.unaugmented.Gerund.MeemGerundNounProvider;
import sarftests.noun.tri.unaugmented.Gerund.NomenGerundNounProvider;
import sarftests.noun.tri.unaugmented.Gerund.QualityGerundNounProvider;

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

    @Inject
    public NounProviderFactory(ActiveParticipleNounProvider activeParticipleNounProvider
            , PassiveParticipleNounProvider passiveParticipleNounProvider
            , EmphasizedActiveParticipleNounProvider emphasizedActiveParticipleNounProvider
            , TimeAndPlaceNounProvider timeAndPlaceNounProvider
            , InstrumentNounProvider instrumentNounProvider
            , AssimilateNounProvider assimilateNounProvider
            , ElativeNounProvider elativeNounProvider
            , GerundNounProvider gerundNounProvider
            , MeemGerundNounProvider meemGerundNounProvider, NomenGerundNounProvider nomenGerundNounProvider, QualityGerundNounProvider qualityGerundNounProvider){
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
    }

    INounProvider create(RootType rootType, NounType nounType){
        if(rootType == RootType.TrilateralUnaugmented){
            return createTrilateralUnaugmented(nounType);
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
}
