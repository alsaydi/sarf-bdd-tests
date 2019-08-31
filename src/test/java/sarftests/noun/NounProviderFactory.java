package sarftests.noun;

import com.google.inject.Inject;
import sarftests.RootType;
import sarftests.noun.tri.unaugmented.ActiveParticipleNounProvider;

public class NounProviderFactory {
    private final ActiveParticipleNounProvider activeParticipleNounProvider;

    @Inject
    public NounProviderFactory(ActiveParticipleNounProvider activeParticipleNounProvider){
        this.activeParticipleNounProvider = activeParticipleNounProvider;
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
        }
        return null;
    }
}
