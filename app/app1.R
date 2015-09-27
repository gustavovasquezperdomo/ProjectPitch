# this is the server file for my project

library(shiny)
if (!require(quantmod)) {
        stop("This app requires the quantmod package. To install it, run 'install.packages(\"quantmod\")'.\n")
}


require_symbol <- function(symbol, envir = parent.frame()) {
        if (is.null(envir[[symbol]])) {
                envir[[symbol]] <- getSymbols(symbol, auto.assign = FALSE)
        }
        
        envir[[symbol]]
}

shinyServer(function(input, output) {
        
        symbol_env <- new.env()
        make_chart <- function(symbol) {
                symbol_data <- require_symbol(symbol, symbol_env)
                
                chartSeries(symbol_data,
                            name      = symbol,
                            type      = input$chart_type,
                            subset    = paste(input$date_range, collapse = "::"),
                            theme     = "white",
                            TA=paste(input$indicators,collapse = ";"))
        }
        
        output$chart <- renderPlot({ make_chart(input$stock_select) })
})