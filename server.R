# library(shiny)
# 
# shinyServer(function(input, output) {
#   output$distPlot <- renderPlot({
#     x    <- faithful[, 2]  # Old Faithful Geyser data
#     bins <- seq(min(x), max(x), length.out = input$obs + 1)
#     
#     # draw the histogram with the specified number of bins
#     # hist(x, breaks = bins, col = 'skyblue', border = 'white')
#     hist(x)
#     # hist(x, breaks = bins)
#   })
# })

library(shiny)

shinyServer(function(input, output) {
  output$textOutput <- renderText({
    length(input$checkboxGroupInput)
  })
  output$tableOutput <- renderTable({
    m <- matrix(c("Single Checkbox", input$checkboxInput,
             "Checkbox Group", paste(input$checkboxGroupInput,collapse=","),
             "Date input", as.character(as.Date(input$dateInput, origin="1970-01-01")),
             "Date range", paste(as.character(as.Date(input$dateRangeInput[1], origin="1970-01-01")),"to",as.character(as.Date(input$dateRangeInput[2], origin="1970-01-01"))),
             "File input", input$fileInput,
             "Numeric input", input$numericInput,
             "Radio buttons", input$radioButtons,
             "Select box", input$selectInput,
             "Sliders", paste(paste(input$sliderInput1, collpase=","), paste(input$sliderInput2, collapse=",")),
             "Text input", input$textInput
             ), ncol = 2, byrow = TRUE, dimnames=list(NULL, c("Widget", "Value")))
  })
})
