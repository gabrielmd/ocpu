#' Dframe
#' 
#' Returns a data frame as response to the input
#' 
#' @export
#' @param df information from real world. Required.
dframe <- function(df = NULL){
        if(is.null(df)){
                # return empty object
                list()
        }
        data.frame(node = 1:4, rnorm(4, 20, 2))
}