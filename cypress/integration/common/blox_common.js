import { And, Given, Then, When } from "cypress-cucumber-preprocessor/steps";


Given("I open the blox app", () => {
  cy.visit(Cypress.env("BLOX_URL"));
  cy.wait(1000);
})

Given("I open the calc app", () => {
  cy.visit(Cypress.env("CALC_URL"));
  cy.wait(1000);
})


Then("load project {string}", (projectName) => {
  cy.contains("New").click();
  cy.get("#id_file_name").select(projectName);
  cy.contains("Load").click();
  cy.wait(4000);
});
  
Then("click on {string}", (el) => {
  cy.get(el).click();
});
  
Then("check {string} has text {string}", (el, txt) => {
  // have.text does not work. why?
  cy.get(el).should('have.value', txt)
})
