library(shiny)

shinyUI(
  navbarPage("",
             tabPanel("Analysis",
                      fluidPage(
                        titlePanel("The Relationship Between The Variables and The Miles Per Gallon (MPG)"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("Number of Cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp",
                                          "Gross Horsepower" = "hp",
                                          "Rear Axle Ratio" = "drat",
                                          "Weight (lb/1000)" = "wt",
                                          "1/4 Mile Time" = "qsec",
                                          "V/S" = "vs",
                                          "Transmission" = "am",
                                          "Number of Forward Gears" = "gear",
                                          "Number of Carburetors" = "carb"
                                        )),
                            
                            checkboxInput("outliers", "BoxPlot's outliers", FALSE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Regression Model", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("Details",
                      h2(""),
                      hr(),
                      h3("The Project"),
                      helpText("Motor Trend, a magazine about the automobile industry Looking at a data set of a collection of cars, they are interested in exploring the relationship",
                               "between a set of variables and miles per gallon (MPG) (outcome). They are particularly interested in the following two questions: Is an automatic or manual transmission better for MPG. Quantify the MPG difference between automatic and manual transmissions."),
                      helpText("The data was extracted from the 1974 Motor Trend US magazine,",
                              " and comprises fuel consumption and 10 aspects of automobile design and performance",
                              " for 32 automobiles (1973-74 models)."),
                      helpText("Note"),
                      p("There are 32 observations on 11 variables in data frame."),
                      a("")
             ),
         
             tabPanel("",
                      a(""),
                      hr(),
                      h2(""),
                      h2("")
             )
  )
)