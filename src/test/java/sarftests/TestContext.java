package sarftests;

import cucumber.runtime.java.guice.ScenarioScoped;

@ScenarioScoped
public class TestContext {
    public TestContext(){
        PresentVerbState = sarftests.PresentVerbState.Nominative;
    }
    public PresentVerbState PresentVerbState;
}
