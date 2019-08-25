package sarftests;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import sarfaccess.KindOfVerbHelper;

import static org.junit.Assert.*;

public class KindOfVerbSteps {
    @Given("a trilateral unaugmented verb")
    public void aTrilateralUnaugmentedVerb() {
    }

    @When("the kind of verb is request")
    public void theKindOfVerbIsRequest() {
    }

    @Then("the verb <verb> kind is <kind>")
    public void theVerbVerbKindIsKind() {
    }

    @Then("the verb {string} kind is {string}")
    public void theVerbKindIs(String verb, String kind) {
        var kov = KindOfVerbHelper.getKindOfVerb(verb);
        assertEquals(kind, kov.name());
    }
}
