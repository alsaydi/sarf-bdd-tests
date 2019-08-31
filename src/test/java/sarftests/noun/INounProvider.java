package sarftests.noun;

import java.util.List;

public interface INounProvider {
    List<String> getNouns(String rootLetters, int conjugations);
}

