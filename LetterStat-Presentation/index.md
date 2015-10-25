---
title       : Letterstat Application 
subtitle    : Presentation
author      : K. Samanta
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Slide1 : Application overview  
LetterStat - A simple application for letter count and display barchart. It has following features -  

1. Is is an web based application  
2. It uses R server at the back end for statistical calculation  


---

## Slide2 : Application User Interface  
### Input  
The left panel of the web screen provides user input field  
### Output
The right panel of the page provides output text and barplot  

---
## Slide3 : Backend Processing  
The back end processing includes following steps -  
User input is converted into a vector  
1. Input text converted to a character vector  
2. The letters are counted and stored in a data frame  
3. a barplot is displayed  

---

## Slide4 : The application Link  
The application is deployed into shinyapps.io server.  
The link for the application is -   
https://kausikmelbourne.shinyapps.io/LetterStat  

---

## Slide5 : The Documentation and Help files  

All the documents including the help and R files are located at the following location -  
https://github.com/kausikmelbourne/DataProdProj

