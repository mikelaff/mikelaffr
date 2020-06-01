# color palettes

# CATEGORICAL ##########################################################################################################
#' Colorblind palette
#'
#' @export
cbPalette <- c("#0072B2", "#D55E00", "grey70", "#009E73", "#E69F00", "#CC79A7", "#56B4E9", "#F0E442")

#' Paper categorical color palette
#'
#' @export
paperCatEight <- c("#08519C", "#CB181D", "#FFBA08", "#43792A", "#858188", "#9395F0", "#D36582", "#DD5E03")


# GRADIENT #############################################################################################################
#' Paper red to blue radient color palette
#'
#' @export
paperRedToBlue <- c("#67000D", "#A50F15", "#CB181D", "#EF3B2C", "#FB6A4A", "#FC9272", "#FCBBA1", "#FEE0D2",
                    "#F7F7F7", "#DEEBF7", "#C6DBEF", "#9ECAE1", "#6BAED6", "#4292C6", "#2171B5", "#08519C", "#08306B")


# REDS #################################################################################################################
#' Paper red color palette
#'
#' @export
paperReds <- c("#67000D", "#A50F15", "#CB181D", "#EF3B2C", "#FB6A4A", "#FC9272", "#FCBBA1", "#FEE0D2", "#F7F7F7")

#' Paper dark red
#'
#' @export
paperDarkRed <- "#67000D"

#' Paper red
#'
#' @export
paperRed <- "#CB181D"

#' Paper light red
#'
#' @export
paperLightRed <- "#FB6A4A"


# BLUES ################################################################################################################
#' Paper blue color palette
#'
#' @export
paperBlues <- c("#08306B", "#08519C", "#2171B5", "#4292C6", "#6BAED6", "#9ECAE1", "#C6DBEF", "#DEEBF7", "#F7F7F7")

#' Paper dark blue
#'
#' @export
paperDarkBlue <- "#08306B"

#' Paper blue
#'
#' @export
paperBlue <- "#08519C"

#' Paper light blue
#'
#' @export
paperLightBlue <- "#6BAED6"


# PLOT FUNCTIONS #######################################################################################################

#' A function to show colors in a plot.
#'
#' @param colors A list of colors to plot.
#' @examples
#' plotColors("red", "white", "blue")
#' @export
plotColors <- function(colors) {
    n <- length(colors)
    image(x = 1:n,
          y = 1,
          z = as.matrix(1:n),
          col = colors,
          xlab = "",
          ylab = "",
          xaxt = "n",
          yaxt = "n",
          bty = "n")
    text(x = 1:n,
         y = 1,
         labels = colors,
         cex = 0.9)
}
