# Totally found it here: https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2

# Set colors
my_color_palette  = c( `cta blue`            = '#0198F5',  
                       `watermelon fail`     = '#FA5E5B',  
                       `notification yellow` = '#FEC334',  
                       `success green`       = '#31C052',   
                       `grey light`          = '#DFE6F4',  
                       `grey medium`         = '#A9BACA', 	
                       `grey dark`           = '#4A637B', 
                       `black treacle`       = '#000000',  
                       `unicorn white`       = '#FFFFFF' )  


# Roxygen comments: 
#' Function to extract my_color_palette colors as hex codes
#'
#' @param ... Character names of my_color_palette 
#'
webPalette <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (my_color_palette)

  my_color_palette[cols]
}
