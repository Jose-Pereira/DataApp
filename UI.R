library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Sens. Analisis"),
  #intentar con otro header para los egresos
  sidebarPanel(
    textInput(inputId="text1", label = "Oil Price"),
    
    sliderInput("text12", "Debt Issue:", 
                min = 0, max = 12000, value = 6000, step = 2000,
                format="$#,##0", locale="us"),
  
    sliderInput("text2", "Imports:", 
                min = 40000, max = 72000, value = 40000, step = 5000,
                format="$#,##0", locale="us"),
    
    sliderInput("text21", "Debt Service:", 
                min = 5500, max = 12000, value = 12000, step = 500,
                format="$#,##0", locale="us")
  #Tomo como mínimo un refinanciamiento de 
    ),
  
  mainPanel(
    tags$b('Oil Exports'),
    textOutput('text1'),
    tags$b('Debt Issue'),
    textOutput('text12'),
    tags$b('Imports'),
    textOutput('text2'),
    tags$b('Debt Service'),
    textOutput('text21'),
    tags$b('Balance'),
    textOutput('text3'),
    
    p(" "),
    p(" "),
      
    tags$b("Documentation:"),
    p("This is a sensibility analisys for the Venezuelan external sector, enter an oil price and play with the slidebars to see if you get a positive or negative balance.")
    
  )
))

