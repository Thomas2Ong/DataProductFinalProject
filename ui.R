## Project

library(shiny)

shinyUI(fluidPage(
    titlePanel("Defaulting Accounts Payment Program"),

    sidebarLayout(
        sidebarPanel(
            h4("Accounts in Arrears: above 6 months", style="color:red"),
            sliderInput("EstPercent6", "Percent of Defaulters Paying 6 installments:",
                        min = 0,
                        max = 1,
                        step = 0.01,
                        value = 0.1),
            sliderInput("FreeInst6",
                        "Number of discounted installments:",
                        min = 0,
                        max = 10,
                        step = 0.1,
                        value = 1),
            ##
            HTML('&nbsp;', '&nbsp;'),
            h4("Accounts in Arrears: above 12 months", style="color:red"),
            sliderInput("EstPercent12", "Percent of Defaulters Paying 12 installments:",
                        min = 0,
                        max = 1,
                        step = 0.01,
                        value = 0.03),
            sliderInput("FreeInst12",
                        "Number of discounted installments:",
                        min = 0,
                        max = 10,
                        step = 0.1,
                        value = 2.3),
            ##
            HTML('&nbsp;', '&nbsp;'),
            h4("Accounts in Arrears: above 18 months", style="color:red"),
            sliderInput("EstPercent18", "Percent of Defaulters Paying 18 installments:",
                        min = 0,
                        max = 1,
                        step = 0.01,
                        value = 0.03),
            sliderInput("FreeInst18",
                        "Number of discounted installments:",
                        min = 0,
                        max = 10,
                        step = 0.1,
                        value = 4),
            
            ##
            HTML('&nbsp;', '&nbsp;'),
            h4("Accounts in Arrears: above 24 months", style="color:red"),
            sliderInput("EstPercent24", "Percent of Defaulters Paying 24 installments:",
                        min = 0,
                        max = 1,
                        step = 0.01,
                        value = 0.02),
            sliderInput("FreeInst24",
                        "Number of discounted installments:",
                        min = 0,
                        max = 10,
                        step = 0.1,
                        value = 5.5),
            
            ##
            HTML('&nbsp;', '&nbsp;'),
            h4("Accounts in Arrears: above 30 months", style="color:red"),
            sliderInput("EstPercent30", "Percent of Defaulters Paying 30 installments:",
                        min = 0,
                        max = 1,
                        step = 0.01,
                        value = 0.1),
            sliderInput("FreeInst30",
                        "Number of discounted installments:",
                        min = 0,
                        max = 10,
                        step = 0.1,
                        value = 7),
            
            ##
            HTML('&nbsp;', '&nbsp;'),
            h4("Accounts in Arrears: above 36 months", style="color:red"),
            sliderInput("EstPercent36", "Percent of Defaulters Paying 36 installments:",
                        min = 0,
                        max = 1,
                        step = 0.01,
                        value = 0.1),
            sliderInput("FreeInst36",
                        "Number of discounted installments:",
                        min = 0,
                        max = 10,
                        step = 0.1,
                        value = 9)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("plot1"),
            
            h4(span(textOutput("TotalCollection"), style="color:red")),
            textOutput("Coll6"),
            textOutput("Coll12"),
            textOutput("Coll18"),
            textOutput("Coll24"),
            textOutput("Coll30"),
            textOutput("Coll36"),
            
            HTML('&nbsp;', '&nbsp;'),
            h4(span(textOutput("TotalDisc"), style="color:red")),
            textOutput("DiscPercent6"),
            textOutput("DiscPercent12"),
            textOutput("DiscPercent18"),
            textOutput("DiscPercent24"),
            textOutput("DiscPercent30"),
            textOutput("DiscPercent36"),
            
            HTML('&nbsp;', '&nbsp;'),
            h4(span(textOutput("TotalDiscMainPrd"), style="color:red")),
            textOutput("MainPrdDisc6"),
            textOutput("MainPrdDisc12"),
            textOutput("MainPrdDisc18"),
            textOutput("MainPrdDisc24"),
            textOutput("MainPrdDisc30"),
            textOutput("MainPrdDisc36")
        )
    )
))
