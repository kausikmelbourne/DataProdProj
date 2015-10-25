diabetesRisk <- function(glucose) glucose / 200
chrstat <- function(sinput) {
    asc <- function(x){strtoi(charToRaw(x), 16L)}
    resstat <- rep(0, 26)
    chInput <- unlist(strsplit(sinput,""))
    chLen <- length(chInput)
    if (chLen < 1 )
    { 
        resstat <- data.frame(ltr= c(1:26),freq = resstat)
        return(resstat)
        
    } else {
        for (i in 1:chLen )
        {
            chIasc <- asc(chInput[i])
            if ((chIasc > 64) && (chIasc < 91 )) 
            {
                idx <- chIasc - 64
                resstat[idx]  <- resstat[idx] + 1
                
            } else if ((chIasc > 96) && (chIasc < 123 )) 
            {
                idx <- chIasc - 96
                resstat[idx] <- resstat[idx] + 1
            }
            
        }
        resstat <- data.frame(ltr= c(1:26),freq = resstat)
        return(resstat)
    }
}


shinyServer(
    function(input, output) {
        output$owcnt1 <- renderPrint({input$txtinp1})
        output$newHist <- renderPlot({
            chvec <- chrstat(input$txtinp1)
            barplot(chvec$freq, chvec$ltr, xlab='Letter (A-Z)', col='lightblue',main='Letter Count')
        })
    }
)