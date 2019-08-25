package sarfaccess;

import sarf.*;
import sarf.kov.KovRulesManager;

public final class KindOfVerbHelper {
    public static KindOfVerb getKindOfVerb(String verb) {
        if (null == verb || verb.length() < 3 || verb.length() > 4) {
            throw new IllegalArgumentException("invalid verb");
        }

        if (verb.length() == 3) {
            return KovRulesManager.getInstance().getTrilateralKov(verb.charAt(0), verb.charAt(1), verb.charAt(2));
        }
        return KovRulesManager.getInstance().getQuadrilateralKovRule(verb.charAt(0), verb.charAt(1), verb.charAt(2), verb.charAt(3)).getKov();
    }
}
