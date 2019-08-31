package sarftests.noun;

import com.google.inject.Inject;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import sarftests.RootType;
import sarftests.TestContext;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

public class NounConjugationSteps {
    private final NounProviderFactory nounProviderFactory;
    private final TestContext testContext;

    @Inject
    public NounConjugationSteps(NounProviderFactory nounProviderFactory, TestContext testContext) {
        this.nounProviderFactory = nounProviderFactory;
        this.testContext = testContext;
    }

    @When("the derived noun is {string} and the root type is {string}")
    public void theDerivedNounIsAndTheRootTypeIs(String nounType, String rootType) {
        testContext.NounType = NounType.valueOf(nounType);
        testContext.RootType = RootType.valueOf(rootType);
    }

    @Then("singular masculine nouns of the verb {string} in conjugation {string} are nominative {string} and accusative {string} and genitive {string}")
    public void singularMasculineNounsOfTheVerbInConjugationAreNominativeAndAccusativeAndGenitive(String verb, String conjugation, String nominative, String accusative, String genitive) {
        assertNoun(verb, Integer.parseInt(conjugation), nominative, NounIndex.NominativeSingleMasculine);
        assertNoun(verb, Integer.parseInt(conjugation), accusative, NounIndex.AccusativeSingleMasculine);
        assertNoun(verb, Integer.parseInt(conjugation), genitive, NounIndex.GenitiveSingleMasculine);
    }

    @And("singular feminine nouns of the verb {string} in conjugation {string} are nominative {string} and accusative {string} and genitive {string}")
    public void singularFeminineNounsOfTheVerbInConjugationAreNominativeAndAccusativeAndGenitive(String verb, String conjugation, String nominative, String accusative, String genitive) {
        assertNoun(verb, Integer.parseInt(conjugation), nominative, NounIndex.NominativeSingleFeminine);
        assertNoun(verb, Integer.parseInt(conjugation), accusative, NounIndex.AccusativeSingleFeminine);
        assertNoun(verb, Integer.parseInt(conjugation), genitive, NounIndex.GenitiveSingleFeminine);
    }

    @And("dual masculine nouns of the verb {string} in conjugation {string} are nominative {string} and accusative {string} and genitive {string}")
    public void dualMasculineNounsOfTheVerbInConjugationAreNominativeAndAccusativeAndGenitive(String verb, String conjugation, String nominative, String accusative, String genitive) {
        assertNoun(verb, Integer.parseInt(conjugation), nominative, NounIndex.NominativeDualMasculine);
        assertNoun(verb, Integer.parseInt(conjugation), accusative, NounIndex.AccusativeDualMasculine);
        assertNoun(verb, Integer.parseInt(conjugation), genitive, NounIndex.GenitiveDualMasculine);
    }

    @And("dual feminine nouns of the verb {string} in conjugation {string} are nominative {string} and accusative {string} and genitive {string}")
    public void dualFeminineNounsOfTheVerbInConjugationAreNominativeAndAccusativeAndGenitive(String verb, String conjugation, String nominative, String accusative, String genitive) {
        assertNoun(verb, Integer.parseInt(conjugation), nominative, NounIndex.NominativeDualFeminine);
        assertNoun(verb, Integer.parseInt(conjugation), accusative, NounIndex.AccusativeDualFeminine);
        assertNoun(verb, Integer.parseInt(conjugation), genitive, NounIndex.GenitiveDualFeminine);
    }

    @And("plural masculine nouns of the verb {string} in conjugation {string} are nominative {string} and accusative {string} and genitive {string}")
    public void pluralMasculineNounsOfTheVerbInConjugationAreNominativeAndAccusativeAndGenitive(String verb, String conjugation, String nominative, String accusative, String genitive) {
        assertNoun(verb, Integer.parseInt(conjugation), nominative, NounIndex.NominativePluralMasculine);
        assertNoun(verb, Integer.parseInt(conjugation), accusative, NounIndex.AccusativePluralMasculine);
        assertNoun(verb, Integer.parseInt(conjugation), genitive, NounIndex.GenitivePluralMasculine);
    }

    @And("plural feminine nouns of the verb {string} in conjugation {string} are nominative {string} and accusative {string} and genitive {string}")
    public void pluralFeminineNounsOfTheVerbInConjugationAreNominativeAndAccusativeAndGenitive(String verb, String conjugation, String nominative, String accusative, String genitive) {
        assertNoun(verb, Integer.parseInt(conjugation), nominative, NounIndex.NominativePluralFeminine);
        assertNoun(verb, Integer.parseInt(conjugation), accusative, NounIndex.AccusativePluralFeminine);
        assertNoun(verb, Integer.parseInt(conjugation), genitive, NounIndex.GenitivePluralFeminine);
    }

    private void assertNoun(String verb, int conjugation, String expected, NounIndex nounIndex){
        var nouns = getNouns(verb, conjugation);
        assertThat(nouns.get(nounIndex.getValue())).isEqualTo(expected);
    }

    private List<String> getNouns(String rootLetters, int conjugation){
        var nounProvider = this.nounProviderFactory.create(testContext.RootType, testContext.NounType);
        return nounProvider.getNouns(rootLetters, conjugation);
    }
}

