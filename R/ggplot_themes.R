# ggplot themes

#' A customized ggplot2 theme.
#'
#' @param theme One of 'basic', 'presentation', or 'figure'. Defaults to 'basic'.
#' @param ... Other arguments to pass to \code{theme()}
#' @examples
#' ggplot(aes(x,y)) +
#'     geom_point() +
#'     plotTheme(theme = "basic", legend.position = "none")
#' @export
plotTheme <- function(theme = "basic", ...) {
    tmp <- ggplot2::theme(panel.background = ggplot2::element_rect(fill = "white",
                                                                   linetype = "solid",
                                                                   color = "black",
                                                                   size = 1),
                          panel.grid = ggplot2::element_blank(),
                          text = element_text(family = "Helvetica"))

    if (theme == "presentation") { # presentation theme
        tmp +
        ggplot2::theme(axis.title = ggplot2::element_text(size = 18,
                                                          face = "bold"),
                       axis.text = ggplot2::element_text(size = 18),
                       title = ggplot2::element_text(size = 20,
                                                     face = "bold"),
                       legend.title = ggplot2::element_text(size = 18),
                       legend.text = ggplot2::element_text(size = 18),
                       plot.caption = ggplot2::element_text(size = 18,
                                                            face = "plain",
                                                            hjust = 0.5,
                                                            margin = grid::unit(c(5,0,0,0),
                                                                                "mm")),
                       ...)
    } else if (theme == "figure") { # figure theme
        tmp +
        ggplot2::theme(axis.title = ggplot2::element_text(size = 6,
                                                          face = "bold"),
                       axis.text = ggplot2::element_text(size = 5),
                       title = ggplot2::element_text(size = 6,
                                                     face = "bold"),
                       legend.title = ggplot2::element_text(size = 6),
                       legend.text = ggplot2::element_text(size = 6),
                       plot.caption = ggplot2::element_text(size = 6,
                                                            face = "plain",
                                                            hjust = 0.5,
                                                            margin = grid::unit(c(5,0,0,0),
                                                                                "mm")),
                       ...)
    } else { # basic plot theme
        tmp +
        ggplot2::theme(axis.title = ggplot2::element_text(size = 12,
                                                          face = "bold"),
                       axis.text = ggplot2::element_text(size = 10),
                       title = ggplot2::element_text(size = 14,
                                                     face = "bold"),
                       legend.title = ggplot2::element_text(size = 12),
                       legend.text = ggplot2::element_text(size = 10),
                       plot.caption = ggplot2::element_text(size = 12,
                                                            face = "plain",
                                                            hjust = 0.5,
                                                            margin = grid::unit(c(5,0,0,0),
                                                                                "mm")),
                       ...)
    }
}

# Colorblind palette
#
# @export
# cbPalette <- c("#0072B2", "#D55E00", "#B3B3B3", "#009E73", "#E69F00", "#CC79A7", "#56B4E9", "#F0E442")
