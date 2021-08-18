import { And, Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given("I open the blox app", () => {
  cy.visit(Cypress.env("BLOX_URL"));
  cy.wait(1000);
})

