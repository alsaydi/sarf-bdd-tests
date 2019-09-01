package sarftests.noun;

import com.google.inject.Inject;
import sarftests.RootType;
import sarftests.noun.tri.unaugmented.ActiveParticipleNounProvider;
import sarftests.noun.tri.unaugmented.EmphasizedActiveParticipleNounProvider;
import sarftests.noun.tri.unaugmented.PassiveParticipleNounProvider;

public class NounProviderFactory {
    private final ActiveParticipleNounProvider activeParticipleNounProvider;
    private final PassiveParticipleNounProvider passiveParticipleNounProvider;
    private final EmphasizedActiveParticipleNounProvider emphasizedActiveParticipleNounProvider;

    @Inject
    public NounProviderFactory(ActiveParticipleNounProvider activeParticipleNounProvider
            , PassiveParticipleNounProvider passiveParticipleNounProvider, EmphasizedActiveParticipleNounProvider emphasizedActiveParticipleNounProvider){
        this.activeParticipleNounProvider = activeParticipleNounProvider;
        this.passiveParticipleNounProvider = passiveParticipleNounProvider;
        this.emphasizedActiveParticipleNounProvider = emphasizedActiveParticipleNounProvider;
    }

    public INounProvider create(RootType rootType, NounType nounType){
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
        }
        return null;
    }
}
