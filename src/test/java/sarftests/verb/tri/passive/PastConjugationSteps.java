package sarftests.verb.tri.passive;

import com.google.inject.Inject;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import sarf.KindOfVerb;
import sarf.SystemConstants;
import sarf.verb.trilateral.unaugmented.ConjugationResult;
import sarf.verb.trilateral.unaugmented.UnaugmentedTrilateralRoot;
import sarf.verb.trilateral.unaugmented.modifier.UnaugmentedTrilateralModifier;
import sarf.verb.trilateral.unaugmented.passive.PassivePastConjugator;
import sarftests.PronounIndex;
import sarftests.verb.tri.Common;

import java.util.ArrayList;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

public class PastConjugationSteps {
    private final Common common;
    private final PassivePastConjugator passivePastConjugator;

    @Inject
    public PastConjugationSteps(Common common, PassivePastConjugator passivePastConjugator){
        this.common = common;
        this.passivePastConjugator = passivePastConjugator;
    }

    @Then("the first person singular past conjugation of the passive verb {string} and conjugation of {string} is {string}")
    public void theFirstPersonSingularPastConjugationOfThePassiveVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.FirstPersonSingular);
    }

    @And("the first person plural past conjugation of the passive verb {string} and conjugation of {string} is {string}")
    public void theFirstPersonPluralPastConjugationOfThePassiveVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.FirstPersonPlural);
    }

    @And("the masculine singular second person past conjugation of the passive verb {string} and conjugation of {string} is {string}")
    public void theMasculineSingularSecondPersonPastConjugationOfThePassiveVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.SecondPersonMasculineSingular);
    }

    @And("the feminine singular second person past conjugation of the passive verb {string} and conjugation of {string} is {string}")
    public void theFeminineSingularSecondPersonPastConjugationOfThePassiveVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.SecondPersonFeminineSingular);
    }

    @And("the masculine dual second person past conjugation of the passive verb {string} and conjugation of {string} is {string}")
    public void theMasculineDualSecondPersonPastConjugationOfThePassiveVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.SecondPersonDual);
    }

    @And("the masculine plural second person past conjugation of the passive verb {string} and conjugation of {string} is {string}")
    public void theMasculinePluralSecondPersonPastConjugationOfThePassiveVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.SecondPersonMasculinePlural);
    }

    @And("the feminine plural second person past conjugation of the passive verb {string} and conjugation of {string} is {string}")
    public void theFemininePluralSecondPersonPastConjugationOfThePassiveVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.SecondPersonFemininePlural);
    }

    @And("the masculine singular third person past conjugation of the passive verb {string} and conjugation of {string} is {string}")
    public void theMasculineSingularThirdPersonPastConjugationOfThePassiveVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.ThirdPersonMasculineSingular);
    }

    @And("the feminine singular third person past conjugation of the passive verb {string} and conjugation of {string} is {string}")
    public void theFeminineSingularThirdPersonPastConjugationOfThePassiveVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.ThirdPersonFeminineSingular);
    }

    @And("the masculine dual third person past conjugation of the passive verb {string} and conjugation of {string} is {string}")
    public void theMasculineDualThirdPersonPastConjugationOfThePassiveVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.ThirdPersonMasculineDual);
    }

    @And("the feminine dual third person past conjugation of the passive verb {string} and conjugation of {string} is {string}")
    public void theFeminineDualThirdPersonPastConjugationOfThePassiveVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.ThirdPersonFeminineDual);
    }

    @And("the masculine plural third person past conjugation of the passive verb {string} and conjugation of {string} is {string}")
    public void theMasculinePluralThirdPersonPastConjugationOfThePassiveVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.ThirdPersonMasculinePlural);
    }

    @And("the feminine plural third person past conjugation of the passive verb {string} and conjugation of {string} is {string}")
    public void theFemininePluralThirdPersonPastConjugationOfThePassiveVerbAndConjugationOfIs(String verb, String conjugation, String expected) {
        assertConjugation(verb, conjugation, expected, PronounIndex.ThirdPersonFemininePlural);
    }

    private void assertConjugation(String verb, String conjugation, String expected, PronounIndex pronounIndex) {
        var verbs = getPastPassiveVerbConjugations(verb, Integer.parseInt(conjugation));
        assertThat(verbs.get(pronounIndex.getValue())).isEqualTo(expected);
    }

    private List<String> getPastPassiveVerbConjugations(String rootLetters, int conjugation){
        KindOfVerb kov = common.getKindOfVerb(rootLetters);
        var root = common.createRoot(rootLetters, conjugation);
        var result = passivePastConjugator.createVerbList(root);
        ConjugationResult conjResult = UnaugmentedTrilateralModifier.getInstance().build(root, kov, result, SystemConstants.PAST_TENSE, false);
        result = conjResult.getFinalResult();
        var conjugatedResult = new ArrayList<String>();
        for(var r : result){
            if(r == null){
                conjugatedResult.add("");
                continue;
            }
            conjugatedResult.add(r.toString());
        }
        return conjugatedResult;
    }
}
