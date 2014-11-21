library(shiny)

shinyServer(
  function(input, output) {
   #multiplico por días del año y producción diaria
    x <- reactive({(as.numeric(input$text1)*360*2034)/1000}) 
    output$text1 <- renderText({x() })
    z <- reactive({as.numeric(input$text12)})
    output$text12 <- renderText({z() })
    y <- reactive({as.numeric(input$text2)})
    output$text2 <- renderText({y()})
    a <- reactive({as.numeric(input$text21)})
    output$text21 <- renderText ({a() })
    output$text3 <- renderText({x() + as.numeric(input$text12) - as.numeric(input$text2) - as.numeric(input$text21)})  
    
    })
