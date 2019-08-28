package sarftests.verb.tri.active;

import com.google.inject.Inject;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import sarf.SystemConstants;
import sarf.kov.KovRulesManager;
import sarf.verb.trilateral.unaugmented.UnaugmentedTrilateralRoot;
import sarf.verb.trilateral.unaugmented.active.ActivePresentConjugator;
import sarf.verb.trilateral.unaugmented.modifier.UnaugmentedTrilateralModifier;
import sarf.verb.trilateral.unaugmented.UnaugmentedImperativeConjugator;
import sarftests.VerbState;
import sarftests.PronounIndex;
import sarftests.TestContext;

import java.util.ArrayList;
import java.util.List;


import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.fail;

public class PresentConjugationSteps {
    private final TestContext testContext;

    @Inject
    public PresentConjugationSteps(TestContext testContext){
        this.testContext = testContext;
    }
    @When("the verb is conjugated in {string} state")
    public void theVerbIsConjugatedInState(String state) {
       this.testContext.VerbState = VerbState.valueOf(state);
    }
    @Then("first person singular present conjugation the verb {string} and conjugation of {string} is {string}")
    public void firstPersonSingularPresentConjugationTheVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.FirstPersonSingular);
    }

    @And("first person plural present conjugation the verb {string} and conjugation of {string} is {string}")
    public void firstPersonPluralPresentConjugationTheVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.FirstPersonPlural);
    }

    @And("masculine singular second person present conjugation the verb {string} and conjugation of {string} is {string}")
    public void masculineSingularSecondPersonPresentConjugationTheVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.SecondPersonMasculineSingular);
    }

    @And("feminine singular second person present conjugation the verb {string} and conjugation of {string} is {string}")
    public void feminineSingularSecondPersonPresentConjugationTheVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.SecondPersonFeminineSingular);
    }

    @And("masculine dual second person present conjugation the verb {string} and conjugation of {string} is {string}")
    public void masculineDualSecondPersonPresentConjugationTheVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.SecondPersonDual);
    }

    @And("masculine plural second person present conjugation the verb {string} and conjugation of {string} is {string}")
    public void masculinePluralSecondPersonPresentConjugationTheVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.SecondPersonMasculinePlural);
    }

    @And("feminine plural second person present conjugation the verb {string} and conjugation of {string} is {string}")
    public void femininePluralSecondPersonPresentConjugationTheVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.SecondPersonFemininePlural);
    }

    @And("masculine singular third person present conjugation the verb {string} and conjugation of {string} is {string}")
    public void masculineSingularThirdPersonPresentConjugationTheVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.ThirdPersonMasculineSingular);
    }

    @And("feminine singular third person present conjugation the verb {string} and conjugation of {string} is {string}")
    public void feminineSingularThirdPersonPresentConjugationTheVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.ThirdPersonFeminineSingular);
    }

    @And("masculine dual third person present conjugation the verb {string} and conjugation of {string} is {string}")
    public void masculineDualThirdPersonPresentConjugationTheVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.ThirdPersonMasculineDual);
    }

    @And("feminine dual third person present conjugation the verb {string} and conjugation of {string} is {string}")
    public void feminineDualThirdPersonPresentConjugationTheVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.ThirdPersonFeminineDual);
    }

    @And("masculine plural third person present conjugation the verb {string} and conjugation of {string} is {string}")
    public void masculinePluralThirdPersonPresentConjugationTheVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.ThirdPersonMasculinePlural);
    }

    @And("feminine plural third person present conjugation the verb {string} and conjugation of {string} is {string}")
    public void femininePluralThirdPersonPresentConjugationTheVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.ThirdPersonFemininePlural);
    }

    private void assertConjugation(String verb, String conjugation, String expected, PronounIndex pronounIndex) {
        var verbs = getPresentVerbConjugations(verb, Integer.parseInt(conjugation));
        assertThat(verbs.get(pronounIndex.getValue())).isEqualTo(expected);
    }

    private List<String> getPresentVerbConjugations(String rootLetters, int conjugation) {
        var verbStateString = SystemConstants.PRESENT_TENSE;
        if(this.testContext.VerbState == VerbState.Imperative){
            verbStateString = SystemConstants.NOT_EMPHASIZED_IMPERATIVE_TENSE;
        }else if(this.testContext.VerbState == VerbState.ImperativeEmphasized){
            verbStateString = SystemConstants.EMPHASIZED_IMPERATIVE_TENSE;
        }
        var rule = KovRulesManager.getInstance().getTrilateralKovRule(rootLetters.charAt(0), rootLetters.charAt(1), rootLetters.charAt(2));
        var kov = rule.getKov();

        var root = PastConjugationSteps.createRoot(rootLetters, conjugation);
        var verbs = getVerbs(root, testContext.VerbState);
        sarf.verb.trilateral.unaugmented.ConjugationResult conjResult = UnaugmentedTrilateralModifier
                .getInstance()
                .build(root, kov, verbs, verbStateString, true);
        var result = new ArrayList<String>();
        for (var v : conjResult.getFinalResult()) {
            if(v == null){
                result.add("");
                continue;
            }
            result.add(v.toString());
        }
        return result;
    }

    private List getVerbs(UnaugmentedTrilateralRoot root, VerbState verbState) {
        switch (verbState){
            case Nominative:
                return ActivePresentConjugator.getInstance().createNominativeVerbList(root);
            case Accusative:
                return ActivePresentConjugator.getInstance().createAccusativeVerbList(root);
            case Jussive:
                return ActivePresentConjugator.getInstance().createJussiveVerbList(root);
            case Emphasized:
                return ActivePresentConjugator.getInstance().createEmphasizedVerbList(root);
            case Imperative:
                return UnaugmentedImperativeConjugator.getInstance().createVerbList(root);
            case ImperativeEmphasized:
                return UnaugmentedImperativeConjugator.getInstance().createEmphasizedVerbList(root);
            case None:
            default:
                fail("invalid present verb state " + verbState);
        }
        return null;
    }
}
