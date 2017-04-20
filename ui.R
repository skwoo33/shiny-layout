# library(shiny)
# 
# shinyUI(fluidPage(
#   titlePanel("Hello Shiny!"),
# 
#   sidebarLayout(
#     sidebarPanel(
#       sliderInput("obs", "Number of observations:",
#                   min = 1, max = 1000, value = 500)
#     ),
#     mainPanel(
#       plotOutput("distPlot")
#     )
#   )
# ))

# library(shiny)
# 
# shinyUI(fluidPage(
#   # titlePanel("Hello Shiny!"),
#   # title = "Hello Shiny2!",
# 
#   fluidRow(
#     column(4,
#       wellPanel(
#         sliderInput("obs", "Number of observations:",
#                     min = 1, max = 1000, value = 500),
#         selectInput("state", "Choose a state:",
#                     list(`East Coast` = c("NY", "NJ", "CT"),
#                          `West Coast` = c("WA", "OR", "CA"),
#                          `Midwest` = c("MN", "WI", "IA"))
#         )
#       )
#     ),
#     column(8,
#       plotOutput("distPlot")
#     )
#   )
# ))


#############
# Grid Layout
#############
# library(shiny)
# library(ggplot2)
# 
# dataset <- diamonds
# 
# shinyUI(fluidPage(
#   title = "Diamonds Explorer",
#   
#   plotOutput('plot'),
#   
#   hr(),
#   
#   fluidRow(
#     column(3,
#            h4("Diamonds Explorer"),
#            sliderInput('sampleSize', 'Sample Size', 
#                        min=1, max=nrow(dataset), value=min(1000, nrow(dataset)), 
#                        step=500, round=0),
#            br(),
#            checkboxInput('jitter', 'Jitter'),
#            checkboxInput('smooth', 'Smooth')
#     ),
#     column(4, offset = 1,
#            selectInput('x', 'X', names(dataset)),
#            selectInput('y', 'Y', names(dataset), names(dataset)[[2]]),
#            selectInput('color', 'Color', c('None', names(dataset)))
#     ),
#     column(4,
#            selectInput('facet_row', 'Facet Row', c(None='.', names(dataset))),
#            selectInput('facet_col', 'Facet Column', c(None='.', names(dataset)))
#     )
#   )
# ))


###############
# tabset Layout
###############
# library(shiny)
# 
# shinyUI(fluidPage(
#   titlePanel("Tabsets"),
# 
#   sidebarLayout(
#     sidebarPanel(
#       # Inputs excluded for brevity
#     ),
# 
#     mainPanel(
#     tabsetPanel(
#       tabPanel("Plot", plotOutput("plot")),
#       tabPanel("Summary", verbatimTextOutput("summary")),
#       tabPanel("Table", tableOutput("table"))
#     )
#     )
#   )
# ))


#####################
# navlistPanel Layout
#####################
# library(shiny)
# 
# shinyUI(fluidPage(
#   titlePanel("navlistPanel"),
# 
#   # sidebarLayout(
#     # sidebarPanel(
#     #   # Inputs excluded for brevity
#     # ),
# 
#     # mainPanel(
#       navlistPanel(
#         "Header A",
#         tabPanel("Plot", plotOutput("plot")),
#         tabPanel("Summary", verbatimTextOutput("summary")),
#         "Header B",
#         tabPanel("Table", tableOutput("table")),
#         "-----",
#         tabPanel("")
#       )
#     # )
#   # )
# ))


#####################
# navbarPage Layout
#####################
# library(shiny)
# 
# shinyUI(navbarPage("My Application", inverse = TRUE, header = "Header", footer = "Footer", collapsible = TRUE,
#   tabPanel("Component 1"),
#   tabPanel("Component 2"),
#   navbarMenu("More",
#              tabPanel("Sub-Component A"),
#              tabPanel("Sub-Component B")
#   )
# ))


#############################
# fluidPage, fluidRow Layout1
#############################
# library(shiny)
# 
# shinyUI(fluidPage(theme = "bootstrap.min.css",
#   fluidRow(
#     column(4,
#            "4"),
#     column(4, offset = 4,
#            "4 offset 4")
#   ),
#   fluidRow(
#     column(3, offset = 3,
#            "3 offset 3"),
#     column(3, offset = 3,
#            "3 offset 3")
#   )
# ))


#############################
# fluidPage, fluidRow Layout2
#############################
# library(shiny)
# 
# shinyUI(fluidPage(
#   fluidRow(
#     column(12, style = "background-color:WhiteSmoke",
#            "Fluid 12",
#            fluidRow(
#              column(6, style = "background-color:LightGray",
#                     "Fluid 6",
#                     fluidRow(
#                       column(6, style = "background-color:Gray",
#                              "Fluid 6"),
#                       column(6, style = "background-color:Gray",
#                              "Fluid 6")
#                     )
#              ),
#              column(6, style = "background-color:LightGray",
#                     "Fluid 6")
#            )
#     )
#   )
# ))


#############################
# fixedPage, fixedRow Layout1
#############################
# library(shiny)
# 
# shinyUI(fixedPage(
#   fixedRow(
#     column(2, style = "background-color:WhiteSmoke",
#            "sidebar"
#     ),
#     column(10, style = "background-color:LightGray",
#            "main"
#     )
#   )
# ))


#############################
# fixedPage, fixedRow Layout2
#############################
# library(shiny)
# 
# shinyUI(fixedPage(
#   fixedRow(
#     column(9, style = "background-color:WhiteSmoke",
#            "Level 1 column",
#            fixedRow(
#              column(6, style = "background-color:LightGray",
#                     "Level 2"
#              ),
#              column(3, style = "background-color:Gray",
#                     "Level 2"
#              )
#            )
#     ),
#     column(3, style = "background-color:WhiteSmoke",
#            "Level 1 column2"
#     )
#   )
# ))


#############################
# fixedPage, fixedRow Layout3
#############################
# library(shiny)
# 
# shinyUI(fixedPage(theme = "bootstrap.min.css",
#   fixedRow(
#     column(9,
#            "Level 1 column",
#            fixedRow(
#              column(6,
#                     "Level 2"
#              ),
#              column(3,
#                     "Level 2"
#              )
#            )
#     ),
#     column(3,
#            "Level 1 column2"
#     )
#   )
# ))


###############
# Basic widgets
###############
library(shiny)

shinyUI(fluidPage(
  titlePanel("Basic widgets"),
  
  fluidRow(
    column(3,
           h3("Buttons"),
           actionButton("actionButton", "Action"),
           br(),
           br()
           #,
           #submitButton("Submit")
    ),
    column(3,
           h3("Single Checkbox"),
           checkboxInput("checkboxInput", "Choice A", TRUE)
    ),
    column(3,
           checkboxGroupInput("checkboxGroupInput", h3("Checkbox group!"), list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), c(2,3))
    ),
    column(3,
           dateInput("dateInput", h3("Date input"), "2017-03-01")
    )
  ),
  fluidRow(
    column(3,
           dateRangeInput("dateRangeInput", h3("Date range"), end = "2017-03-31", start = "2017-03-01")
    ),
    column(3,
           fileInput("fileInput", h3("File input"))
    ),
    column(3,
           h3("Help text"),
           helpText("Note: help text isn't a true widget, but it provides an easy way to add text to accompany other widgets.")
    ),
    column(3,
           numericInput("numericInput", h3("Numeric input"), 1)
    )
  ),
  fluidRow(
    column(3,
           radioButtons("radioButtons", h3("Radio buttons"), list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3))
    ),
    column(3,
           #selectInput("selectInput", h3("Select box"), list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 3)
           selectInput("selectInput", h3("Select box"), list("Choice 1", "Choice 2", "Choice 3"), 3)
    ),
    column(3,
           sliderInput("sliderInput1", h3("Sliders"), 0, 100, c(50, 50)),
           sliderInput("sliderInput2", NULL, 0, 100, c(25, 75))
    ),
    column(3,
           textInput("textInput", h3("Text input"), placeholder = "Enter text...")
    )
  ),
  hr(),
  textOutput("textOutput"),
  hr(),
  tableOutput("tableOutput")
))
