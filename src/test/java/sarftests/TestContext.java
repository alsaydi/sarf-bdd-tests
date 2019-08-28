package sarftests;

import cucumber.runtime.java.guice.ScenarioScoped;

@ScenarioScoped
public class TestContext {
    public TestContext(){
        VerbState = VerbState.Nominative;
    }
    public VerbState VerbState;
}
