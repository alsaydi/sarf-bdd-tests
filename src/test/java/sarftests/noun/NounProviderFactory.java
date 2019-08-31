package sarftests.noun;

import sarftests.RootType;
import sarftests.noun.tri.unaugmented.ActiveParticipleNounProvider;

public class NounProviderFactory {
    public INounProvider create(RootType rootType, NounType nounType){
        if(rootType == RootType.TrilateralUnaugmented){
            return createTrilateralUnaugmented(nounType);
        }
        return null;
    }

    private INounProvider createTrilateralUnaugmented(NounType nounType) {
        switch (nounType){
            case ActiveParticiple:
                return new ActiveParticipleNounProvider();
        }
        return null;
    }
}
