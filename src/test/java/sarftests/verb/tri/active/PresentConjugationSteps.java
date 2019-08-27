package sarftests.verb.tri.active;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import sarf.SystemConstants;
import sarf.kov.KovRulesManager;
import sarf.verb.trilateral.unaugmented.active.ActivePastConjugator;
import sarf.verb.trilateral.unaugmented.active.ActivePresentConjugator;
import sarf.verb.trilateral.unaugmented.modifier.UnaugmentedTrilateralModifier;
import sarftests.PronounIndex;

import java.util.ArrayList;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

public class PresentConjugationSteps {

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

    private static void assertConjugation(String verb, String conjugation, String expected, PronounIndex pronounIndex) {
        var verbs = getPresentVerbConjugations(verb, Integer.parseInt(conjugation));
        assertThat(verbs.get(pronounIndex.getValue())).isEqualTo(expected);
    }

    private static List<String> getPresentVerbConjugations(String rootLetters, int conjugation) {
        var rule = KovRulesManager.getInstance().getTrilateralKovRule(rootLetters.charAt(0), rootLetters.charAt(1), rootLetters.charAt(2));
        var kov = rule.getKov();

        var root = PastConjugationSteps.createRoot(rootLetters, conjugation);
        var verbs = ActivePresentConjugator.getInstance().createNominativeVerbList(root);
        sarf.verb.trilateral.unaugmented.ConjugationResult conjResult = UnaugmentedTrilateralModifier
                .getInstance()
                .build(root, kov, verbs, SystemConstants.PRESENT_TENSE, true);
        var result = new ArrayList<String>();
        for (var v : conjResult.getFinalResult()) {
            result.add(v.toString());
        }
        return result;
    }
}
