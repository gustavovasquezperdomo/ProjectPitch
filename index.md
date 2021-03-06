---
title       : Technical Analysis Tool
subtitle    : a free time developement
author      : Archon Financial Management & Investments
job         : Financial Analysis
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Technical Analysis Tool

# An attempt to understand financial markets

welcome to the Technical Analysis Tool Pitch, you can find it and try it at
http://archonfmi.shinyapps.io/project

Objectives

1. To get a visual of three stocks (Apple, Google and Microsft)
2. Begin explorations with four technical indicators
3. Exchange chart types, according to your preferences
4. Increase/Decrease the time period to analize 

---  

## Potential Market

Archon Financial Management & Investment is an international company based in the USA, which brings financial studies and recommendations to companies and investors

There are more than 5.000 companies searching for a service like this.

1. real time actualization
2. forecasting capabilities
3. visual representation of the data

---

## What can you do with the Technical Analysis Tool?

By now, you can check and analyse three of the most important stocks in the world: Apple, Google and Microsoft. In a future we'll be providing you with machine learning forecasting.

<figure>
  <img src="TAT.jpg" alt="Technical Analysis Tool" width="900" height="400">
</figure>

---

## Do you wanna give it a try? 


```r
require(quantmod)
getSymbols("AAPL")
chartSeries(AAPL, subset = "last 24 weeks", theme = "white", TA = "addRSI();addMACD();addBBands()") 
```

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 

and that's it!



