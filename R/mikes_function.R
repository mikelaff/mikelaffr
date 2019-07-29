# some new functions

#' Mikes function
#' 
#' This function tells you what mike says.
#' @param txt What does mike say?
#' @keywords output
#' @export
#' @examples 
#' mikes_function()
mikes_function <- function(txt = "yep") {
    print(paste("mike says:", txt))
}