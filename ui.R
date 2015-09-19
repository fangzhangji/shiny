library(shiny)
shinyUI(
      pageWithSidebar(
      headerPanel("Calculating your BMI"),
      sidebarPanel(
            h3('How to use this app:'),
            h4('The body mass index (BMI) or Quetelet index, is a value derived from the mass (weight) and height of an individual. The BMI is defined as the body mass divided by the square of the body height, and is universally expressed in units of kg/m2. BMI is an indicator of general health.'),
            h4('Units conversion: 1 inch = 2.54 cm; 1 pound = 0.452 kg'),
            numericInput('height','Height in cm', 170, min=100, max=200, step=1),
            numericInput('weight','Weight in kg',60, min=40, max=100,step=1),
            submitButton('Submit')
            ),
      mainPanel(
            h3('Results of calculation'),
            h4('Your BMI as calculated'),
            verbatimTextOutput("calculation"),
            h4('Normal BMI range is 18.5~25.')
            )
      ))