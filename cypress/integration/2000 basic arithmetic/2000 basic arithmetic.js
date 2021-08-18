import { And, Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Then("enter {string}", (s) => {
  for(let ch of s) {
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

