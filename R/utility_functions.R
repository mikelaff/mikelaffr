# utility funtions

#' Stand out message printing
#'
#' This function is designed to make printing flagposts and status messages easier
#' to see against many output messages.
#'
#' @param message The message to print. Passed directly to `base::print()`. Defaults to the empty character string, `""`.
#' @param width The number of characters in width for the final message. Defaults to 80.
#' @param fillChar Character used for padding message to fill the width required. Defaults to `"#"`.
#' @param justify One of "l", "m", or "r" to justify the message on the left, middle,
#'     or right side of the output line. Defaults to "l".
#' @examples
#' printMessage("hi")
#' @export
printMessage <- function(message = "", width = 80, fillChar = "#", justify = "m", ...) {

    if (nchar(message) >= width) {
        # if message is longer than width, print plain message
        print(message, ...)
    } else if (nchar(message) == 0) {
        # if message is blank, print character line
        print(stringr::str_pad(string = message,
                               width = width,
                               pad = fillChar),
              ...)
    } else if (justify == "l") {
        # add whitespace to end of string
        message <- paste(message, " ", sep="")

        print(stringr::str_pad(string = message,
                               width = width,
                               side = "right",
                               pad = fillChar),
              ...)
    } else if (justify == "r") {
        # add whitespace to beginning of string
        message <- paste(" ", message, sep="")

        print(stringr::str_pad(string = message,
                               width = width,
                               side = "left",
                               pad = fillChar),
              ...)
    } else {
        # add whitespace to beginning and end of string
        message <- paste(" ", message, " ", sep="")

        print(stringr::str_pad(string = message,
                               width = width,
                               side = "both",
                               pad = fillChar),
              ...)
    }
}

#' Print the top left corner of a matrix or dataframe.
#'
#' Print the first n rows and first n columns of a matrix or dataframe for a quick
#' look at the row/column structure of the object.
#'
#' @param obj A matrix or dataframe.
#' @param n Number of rows and columns to print.
#' @export
tl <- function(obj, n = 5) {

    if (nrow(obj) < n) {
        r <- nrow(obj)
    } else {
        r <- n
    }

    if (ncol(obj) < n) {
        c <- ncol(obj)
    } else {
        c <- n
    }

    obj[1:r, 1:c]
}






