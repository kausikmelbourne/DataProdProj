shinyUI(pageWithSidebar(
  headerPanel("Text Analysis"),
  sidebarPanel(
    textInput('txtinp1', 'Enter any text', value = "", width = NULL)
  ),
  mainPanel(
    h3('Text Analysis Output (plot letter frequency)'),
    h4('You entered'),
    verbatimTextOutput("owcnt1"),
    plotOutput('newHist')
    
  )
))