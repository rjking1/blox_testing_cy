import { And, Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Then("load project {string}", (projectName) => {
  cy.get("#id_file_name").select(projectName);
  cy.contains("Load").click();
  cy.wait(3000);
});
  
Then("click on {string}", (el) => {
  cy.get(el).click();
});
  
Then("check {string} has text {string}", (el, txt) => {
  // have.text does not work. why?
  cy.get(el).should('have.value', txt)
})
