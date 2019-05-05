      # Totally found it here: https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2
  
      # Set colors
      my_color_palette  = c( `cta blue`            = '#0198F5' ,  # 1. cta-blue 
                             `watermelon fail` .   = '#FA5E5B',   # 2. watermelon-fail
                             `notification yellow` = '#FEC334',   # 3. notification-yellow
                             `success green`       = '#31C052',   # 4. success-green
                             `grey light`          = '#DFE6F4',   # 5. grey-light
                             `grey medium`         = '#A9BACA', 	# 6. grey-medium 	
                             `grey dark`           = '#4A637B',   # 7. grey-dark
                             `black-treacle`       = '#000000',   # 8. black-treacle
                             `unicorn-white`       = '#FFFFFF' )  # 9. unicorn-white                                           ),                              )


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
