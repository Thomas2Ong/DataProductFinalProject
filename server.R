## Project

library(readxl)
library(dplyr)
library(ggplot2)
library(scales)

library(shiny)
shinyServer(function(input, output) {
    dt <- read_xlsx("Default.xlsx")
    dt$rndDownMIA <- as.integer(floor(dt$EstMIA))

## Discount Percentage    
    Disc6 <- reactive ({
        Percent6  <- input$EstPercent6
        Free6  <- input$FreeInst6
        dt6 <- subset(dt, rndDownMIA >= (6+Free6))
        RowNo <- nrow(dt6)
        NoAccPay <- floor(RowNo * Percent6)
        AvgMthInst <- mean(dt6$MthInstall)
        Collection <- AvgMthInst * NoAccPay * 6
        DiscMth <- AvgMthInst * NoAccPay * Free6
        DiscPercent6 <- DiscMth / (Collection + DiscMth)
    })
    
    Disc12 <- reactive ({
        Percent12 <- input$EstPercent12
        Free12 <- input$FreeInst12
        dt12 <- subset(dt, rndDownMIA >= (12+Free12))
        RowNo <- nrow(dt12)
        NoAccPay <- floor(RowNo * Percent12)
        AvgMthInst <- mean(dt12$MthInstall)
        Collection <- AvgMthInst * NoAccPay * 12
        DiscMth <- AvgMthInst * NoAccPay * Free12
        DiscPercent12 <- DiscMth / (Collection + DiscMth)
    })
    
    Disc18 <- reactive ({
        Percent18 <- input$EstPercent18
        Free18 <- input$FreeInst18
        dt18 <- subset(dt, rndDownMIA >= (18+Free18))
        RowNo <- nrow(dt18)
        NoAccPay <- floor(RowNo * Percent18)
        AvgMthInst <- mean(dt18$MthInstall)
        Collection <- AvgMthInst * NoAccPay * 18
        DiscMth <- AvgMthInst * NoAccPay * Free18
        DiscPercent18 <- DiscMth / (Collection + DiscMth)
    })
    
    Disc24 <- reactive ({
        Percent24 <- input$EstPercent24
        Free24 <- input$FreeInst24
        dt24 <- subset(dt, rndDownMIA >= (24+Free24))
        RowNo <- nrow(dt24)
        NoAccPay <- floor(RowNo * Percent24)
        AvgMthInst <- mean(dt24$MthInstall)
        Collection <- AvgMthInst * NoAccPay * 24
        DiscMth <- AvgMthInst * NoAccPay * Free24
        DiscPercent24 <- DiscMth / (Collection + DiscMth)
    })
    
    Disc30 <- reactive ({
        Percent30 <- input$EstPercent30
        Free30 <- input$FreeInst30
        dt30 <- subset(dt, rndDownMIA >= (30+Free30))
        RowNo <- nrow(dt30)
        NoAccPay <- floor(RowNo * Percent30)
        AvgMthInst <- mean(dt30$MthInstall)
        Collection <- AvgMthInst * NoAccPay * 30
        DiscMth <- AvgMthInst * NoAccPay * Free30
        DiscPercent30 <- DiscMth / (Collection + DiscMth)
    })
    
    Disc36 <- reactive ({
        Percent36 <- input$EstPercent36
        Free36 <- input$FreeInst36
        dt36 <- subset(dt, rndDownMIA >= (36+Free36))
        RowNo <- nrow(dt36)
        NoAccPay <- floor(RowNo * Percent36)
        AvgMthInst <- mean(dt36$MthInstall)
        Collection <- AvgMthInst * NoAccPay * 36
        DiscMth <- AvgMthInst * NoAccPay * Free36
        DiscPercent36 <- DiscMth / (Collection + DiscMth)
    })

## Discount Amount
    DiscAmt6 <- reactive ({
        Percent6  <- input$EstPercent6
        Free6  <- input$FreeInst6
        dt6 <- subset(dt, rndDownMIA >= (6+Free6))
        RowNo <- nrow(dt6)
        NoAccPay <- floor(RowNo * Percent6)
        AvgMthInst <- mean(dt6$MthInstall)
        DiscMth <- AvgMthInst * NoAccPay * Free6
    })
    
    DiscAmt12 <- reactive ({
        Percent12 <- input$EstPercent12
        Free12 <- input$FreeInst12
        dt12 <- subset(dt, rndDownMIA >= (12+Free12))
        RowNo <- nrow(dt12)
        NoAccPay <- floor(RowNo * Percent12)
        AvgMthInst <- mean(dt12$MthInstall)
        DiscMth <- AvgMthInst * NoAccPay * Free12
    })
    
    DiscAmt18 <- reactive ({
        Percent18 <- input$EstPercent18
        Free18 <- input$FreeInst18
        dt18 <- subset(dt, rndDownMIA >= (18+Free18))
        RowNo <- nrow(dt18)
        NoAccPay <- floor(RowNo * Percent18)
        AvgMthInst <- mean(dt18$MthInstall)
        DiscMth <- AvgMthInst * NoAccPay * Free18
    })
    
    DiscAmt24 <- reactive ({
        Percent24 <- input$EstPercent24
        Free24 <- input$FreeInst24
        dt24 <- subset(dt, rndDownMIA >= (24+Free24))
        RowNo <- nrow(dt24)
        NoAccPay <- floor(RowNo * Percent24)
        AvgMthInst <- mean(dt24$MthInstall)
        DiscMth <- AvgMthInst * NoAccPay * Free24
    })
    
    DiscAmt30 <- reactive ({
        Percent30 <- input$EstPercent30
        Free30 <- input$FreeInst30
        dt30 <- subset(dt, rndDownMIA >= (30+Free30))
        RowNo <- nrow(dt30)
        NoAccPay <- floor(RowNo * Percent30)
        AvgMthInst <- mean(dt30$MthInstall)
        DiscMth <- AvgMthInst * NoAccPay * Free30
    })
    
    DiscAmt36 <- reactive ({
        Percent36 <- input$EstPercent36
        Free36 <- input$FreeInst36
        dt36 <- subset(dt, rndDownMIA >= (36+Free36))
        RowNo <- nrow(dt36)
        NoAccPay <- floor(RowNo * Percent36)
        AvgMthInst <- mean(dt36$MthInstall)
        DiscMth <- AvgMthInst * NoAccPay * Free36
    })
    
## Discount to Main Product
    PrdDisc6 <- reactive ({
        Percent6  <- input$EstPercent6
        Free6  <- input$FreeInst6
        dt6 <- subset(dt, rndDownMIA >= (6+Free6))
        RowNo <- nrow(dt6)
        NoAccPay <- floor(RowNo * Percent6)
        AvgMthInst <- mean(dt6$MthInstall)
        AvgMainPrd <- mean(dt6$MainPrdNet)
        MainPrd <- AvgMainPrd * NoAccPay
        DiscMth <- AvgMthInst * NoAccPay * Free6
        MainPrdDisc6 <- DiscMth / MainPrd
    })
    
    PrdDisc12 <- reactive ({
        Percent12  <- input$EstPercent12
        Free12  <- input$FreeInst12
        dt12 <- subset(dt, rndDownMIA >= (12+Free12))
        RowNo <- nrow(dt12)
        NoAccPay <- floor(RowNo * Percent12)
        AvgMthInst <- mean(dt12$MthInstall)
        AvgMainPrd <- mean(dt12$MainPrdNet)
        MainPrd <- AvgMainPrd * NoAccPay
        DiscMth <- AvgMthInst * NoAccPay * Free12
        MainPrdDisc12 <- DiscMth / MainPrd
    })
    
    PrdDisc18 <- reactive ({
        Percent18  <- input$EstPercent18
        Free18  <- input$FreeInst18
        dt18 <- subset(dt, rndDownMIA >= (18+Free18))
        RowNo <- nrow(dt18)
        NoAccPay <- floor(RowNo * Percent18)
        AvgMthInst <- mean(dt18$MthInstall)
        AvgMainPrd <- mean(dt18$MainPrdNet)
        MainPrd <- AvgMainPrd * NoAccPay
        DiscMth <- AvgMthInst * NoAccPay * Free18
        MainPrdDisc18 <- DiscMth / MainPrd
    })
    
    PrdDisc24 <- reactive ({
        Percent24  <- input$EstPercent24
        Free24  <- input$FreeInst24
        dt24 <- subset(dt, rndDownMIA >= (24+Free24))
        RowNo <- nrow(dt24)
        NoAccPay <- floor(RowNo * Percent24)
        AvgMthInst <- mean(dt24$MthInstall)
        AvgMainPrd <- mean(dt24$MainPrdNet)
        MainPrd <- AvgMainPrd * NoAccPay
        DiscMth <- AvgMthInst * NoAccPay * Free24
        MainPrdDisc24 <- DiscMth / MainPrd
    })
    
    PrdDisc30 <- reactive ({
        Percent30  <- input$EstPercent30
        Free30  <- input$FreeInst30
        dt30 <- subset(dt, rndDownMIA >= (30+Free30))
        RowNo <- nrow(dt30)
        NoAccPay <- floor(RowNo * Percent30)
        AvgMthInst <- mean(dt30$MthInstall)
        AvgMainPrd <- mean(dt30$MainPrdNet)
        MainPrd <- AvgMainPrd * NoAccPay
        DiscMth <- AvgMthInst * NoAccPay * Free30
        MainPrdDisc30 <- DiscMth / MainPrd
    })
    
    PrdDisc36 <- reactive ({
        Percent36  <- input$EstPercent36
        Free36  <- input$FreeInst36
        dt36 <- subset(dt, rndDownMIA >= (36+Free36))
        RowNo <- nrow(dt36)
        NoAccPay <- floor(RowNo * Percent36)
        AvgMthInst <- mean(dt36$MthInstall)
        AvgMainPrd <- mean(dt36$MainPrdNet)
        MainPrd <- AvgMainPrd * NoAccPay
        DiscMth <- AvgMthInst * NoAccPay * Free36
        MainPrdDisc36 <- DiscMth / MainPrd
    })
    
## Main Product
    MainPrd6 <- reactive ({
        Percent6  <- input$EstPercent6
        Free6  <- input$FreeInst6
        dt6 <- subset(dt, rndDownMIA >= (6+Free6))
        RowNo <- nrow(dt6)
        NoAccPay <- floor(RowNo * Percent6)
        AvgMthInst <- mean(dt6$MthInstall)
        AvgMainPrd <- mean(dt6$MainPrdNet)
        MainPrd <- AvgMainPrd * NoAccPay
    })
    
    MainPrd12 <- reactive ({
        Percent12  <- input$EstPercent12
        Free12  <- input$FreeInst12
        dt12 <- subset(dt, rndDownMIA >= (12+Free12))
        RowNo <- nrow(dt12)
        NoAccPay <- floor(RowNo * Percent12)
        AvgMthInst <- mean(dt12$MthInstall)
        AvgMainPrd <- mean(dt12$MainPrdNet)
        MainPrd <- AvgMainPrd * NoAccPay
    })
    
    MainPrd18 <- reactive ({
        Percent18  <- input$EstPercent18
        Free18  <- input$FreeInst18
        dt18 <- subset(dt, rndDownMIA >= (18+Free18))
        RowNo <- nrow(dt18)
        NoAccPay <- floor(RowNo * Percent18)
        AvgMthInst <- mean(dt18$MthInstall)
        AvgMainPrd <- mean(dt18$MainPrdNet)
        MainPrd <- AvgMainPrd * NoAccPay
    })
    
    MainPrd24 <- reactive ({
        Percent24  <- input$EstPercent24
        Free24  <- input$FreeInst24
        dt24 <- subset(dt, rndDownMIA >= (24+Free24))
        RowNo <- nrow(dt24)
        NoAccPay <- floor(RowNo * Percent24)
        AvgMthInst <- mean(dt24$MthInstall)
        AvgMainPrd <- mean(dt24$MainPrdNet)
        MainPrd <- AvgMainPrd * NoAccPay
    })
    
    MainPrd30 <- reactive ({
        Percent30  <- input$EstPercent30
        Free30  <- input$FreeInst30
        dt30 <- subset(dt, rndDownMIA >= (30+Free30))
        RowNo <- nrow(dt30)
        NoAccPay <- floor(RowNo * Percent30)
        AvgMthInst <- mean(dt30$MthInstall)
        AvgMainPrd <- mean(dt30$MainPrdNet)
        MainPrd <- AvgMainPrd * NoAccPay
    })
    
    MainPrd36 <- reactive ({
        Percent36  <- input$EstPercent36
        Free36  <- input$FreeInst36
        dt36 <- subset(dt, rndDownMIA >= (36+Free36))
        RowNo <- nrow(dt36)
        NoAccPay <- floor(RowNo * Percent36)
        AvgMthInst <- mean(dt36$MthInstall)
        AvgMainPrd <- mean(dt36$MainPrdNet)
        MainPrd <- AvgMainPrd * NoAccPay
    })
 
## Collection
    Collection6 <- reactive ({
        Percent6  <- input$EstPercent6
        Free6  <- input$FreeInst6
        dt6 <- subset(dt, rndDownMIA >= (6+Free6))
        RowNo <- nrow(dt6)
        NoAccPay <- floor(RowNo * Percent6)
        AvgMthInst <- mean(dt6$MthInstall)
        Coll6 <- AvgMthInst * NoAccPay * 6
    })
    
    Collection12 <- reactive ({
        Percent12 <- input$EstPercent12
        Free12 <- input$FreeInst12
        dt12 <- subset(dt, rndDownMIA >= (12+Free12))
        RowNo <- nrow(dt12)
        NoAccPay <- floor(RowNo * Percent12)
        AvgMthInst <- mean(dt12$MthInstall)
        Coll12 <- AvgMthInst * NoAccPay * 12
    })
    
    Collection18 <- reactive ({
        Percent18 <- input$EstPercent18
        Free18 <- input$FreeInst18
        dt18 <- subset(dt, rndDownMIA >= (18+Free18))
        RowNo <- nrow(dt18)
        NoAccPay <- floor(RowNo * Percent18)
        AvgMthInst <- mean(dt18$MthInstall)
        Coll18 <- AvgMthInst * NoAccPay * 18
    })
    
    Collection24 <- reactive ({
        Percent24 <- input$EstPercent24
        Free24 <- input$FreeInst24
        dt24 <- subset(dt, rndDownMIA >= (24+Free24))
        RowNo <- nrow(dt24)
        NoAccPay <- floor(RowNo * Percent24)
        AvgMthInst <- mean(dt24$MthInstall)
        Coll24 <- AvgMthInst * NoAccPay * 24
    })
    
    Collection30 <- reactive ({
        Percent30 <- input$EstPercent30
        Free30 <- input$FreeInst30
        dt30 <- subset(dt, rndDownMIA >= (30+Free30))
        RowNo <- nrow(dt30)
        NoAccPay <- floor(RowNo * Percent30)
        AvgMthInst <- mean(dt30$MthInstall)
        Coll30 <- AvgMthInst * NoAccPay * 30
    })
    
    Collection36 <- reactive ({
        Percent36 <- input$EstPercent36
        Free36 <- input$FreeInst36
        dt36 <- subset(dt, rndDownMIA >= (36+Free36))
        RowNo <- nrow(dt36)
        NoAccPay <- floor(RowNo * Percent36)
        AvgMthInst <- mean(dt36$MthInstall)
        Coll36 <- AvgMthInst * NoAccPay * 36
    })

## Discount to Installment Payment
    output$DiscPercent6 <- renderText({paste("Paying 6 installments: ", 
                                             sprintf("%.1f %%", 100 * Disc6()))
    })

    output$DiscPercent12 <- renderText({paste("Paying 12 installments: ", 
                                              sprintf("%.1f %%", 100 * Disc12()))
    })
    
    output$DiscPercent18 <- renderText({paste("Paying 18 installments: ", 
                                              sprintf("%.1f %%", 100 * Disc18()))
    })
    
    output$DiscPercent24 <- renderText({paste("Paying 24 installments: ", 
                                              sprintf("%.1f %%", 100 * Disc24()))
    })
    
    output$DiscPercent30 <- renderText({paste("Paying 30 installments: ", 
                                              sprintf("%.1f %%", 100 * Disc30()))
    })
    
    output$DiscPercent36 <- renderText({paste("Paying 36 installments: ", 
                                              sprintf("%.1f %%", 100 * Disc36()))
    })

## Discount to Main Product        
    output$MainPrdDisc6 <- renderText({paste("Paying 6 installments: ", 
                                             sprintf("%.1f %%", 100 * PrdDisc6()))
    })
    
    output$MainPrdDisc12 <- renderText({paste("Paying 12 installments: ", 
                                             sprintf("%.1f %%", 100 * PrdDisc12()))
    })
    
    output$MainPrdDisc18 <- renderText({paste("Paying 18 installments: ", 
                                             sprintf("%.1f %%", 100 * PrdDisc18()))
    })
    
    output$MainPrdDisc24 <- renderText({paste("Paying 24 installments: ", 
                                             sprintf("%.1f %%", 100 * PrdDisc24()))
    })
    
    output$MainPrdDisc30 <- renderText({paste("Paying 30 installments: ", 
                                              sprintf("%.1f %%", 100 * PrdDisc30()))
    })
    
    output$MainPrdDisc36 <- renderText({paste("Paying 36 installments: ", 
                                              sprintf("%.1f %%", 100 * PrdDisc36()))
    })
    
## Collection Amount    
    output$Coll6 <- renderText({paste("6 installments: ", 
                                      formatC(Collection6(), format="f", big.mark=",",digits=0))
    })
    
    output$Coll12 <- renderText({paste("12 installments: ", 
                                       formatC(Collection12(), format="f", big.mark=",",digits=0))
    })

    output$Coll18 <- renderText({paste("18 installments: ", 
                                       formatC(Collection18(), format="f", big.mark=",",digits=0))
    })
    
    output$Coll24 <- renderText({paste("24 installments: ", 
                                       formatC(Collection24(), format="f", big.mark=",",digits=0))
    })
    
    output$Coll30 <- renderText({paste("30 installments: ", 
                                       formatC(Collection30(), format="f", big.mark=",",digits=0))
    })
    
    output$Coll36 <- renderText({paste("36 installments: ", 
                                       formatC(Collection36(), format="f", big.mark=",",digits=0))
    })

## Total Collection
    output$TotalCollection <- renderText({
        Total <- Collection6() + Collection12() + Collection18() + Collection24() +
            Collection30() + Collection36()
        Total <- paste("Total Collection: ", 
                       formatC(Total, format="f", big.mark=",",digits=0))
    })

## Discount to Total collection
    output$TotalDisc <- renderText({
        TotalC <- Collection6() + Collection12() + Collection18() + Collection24() +
            Collection30() + Collection36()
        TotalD <- DiscAmt6() + DiscAmt12() + DiscAmt18() + DiscAmt24() + DiscAmt30() + DiscAmt36()
        Total <- TotalD / TotalC
        Total <- paste("Discount / (Collection + Discount): ", sprintf("%.1f %%", 100 * Total))
    })


## Discount to Total Main Product
    output$TotalDiscMainPrd <- renderText({
        TotalMainPrd <- MainPrd6() + MainPrd12() + MainPrd18() + MainPrd24() +
            MainPrd30() + MainPrd36()
        TotalD <- DiscAmt6() + DiscAmt12() + DiscAmt18() + DiscAmt24() + DiscAmt30() + DiscAmt36()
        Total <- TotalD / TotalMainPrd
        Total <- paste("Discount / Main Product: ", sprintf("%.1f %%", 100 * Total))
    })
    
## Plot
    PlotInfo <- reactive ({
        table1 <- data.frame("InstPaid"=c("6", "12", "18", "24", "30", "36"), 
                             "Amount"=c(Collection6(), Collection12(), Collection18(), 
                                        Collection24(), Collection30(), Collection36()))
    })
    
    output$plot1 <- renderPlot({
        dt <- PlotInfo()
        dt$InstPaid <- factor(dt$InstPaid, levels=c("6", "12", "18", "24", "30", "36"))
        
        ggplot(dt, aes(x=InstPaid, y=Amount)) + 
            geom_bar(stat="identity", fill="blue") + xlab("Number of Installments Paid (Payment Bucket)") +
            ylab("Collection") + ggtitle("Total Collection for Each Payment Bucket") +
            scale_y_continuous(labels = comma)
        
          })
})
