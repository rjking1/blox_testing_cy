import { And, Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given("I open the calc app", () => {
  cy.visit(Cypress.env("CALC_URL"));
  cy.wait(1000);
})

Then("enter {string}", (s) => {
  for(let ch of s) {
    if (ch == ".") {
      ch = "point";
    }
    cy.get("#button" + ch).click();
  }
});

Then("press {string}", (s) => {
  cy.get("#button" + s).click();
});

Then("result is {string}", (s) => {
  cy.wait(500);
  cy.get('#input1').should('have.value', s)
});

