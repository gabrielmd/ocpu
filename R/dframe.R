#' Dframe
#' 
#' Returns a data frame as response to the input
#' 
#' @export
#' @param df information from real world. Required.
dframe <- function(df = NULL, h = 5, node.id = 1){
        if(is.null(df)){
                # return empty object
                list()
        }

        # complete empty values from sequence -- interpolation
        x <- seq(min(df$sequence), max(df$sequence))
        complete.sequence <- approx(as.numeric(df$sequence), df$value, xout = x)$value
        
        # prediction model
        library(forecast)
        m <- auto.arima(complete.sequence)
        
        data.frame(node = node.id, values = forecast(m, h=h))
}