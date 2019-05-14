# Totally found it here: https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2

# Set colors
my_color_palette  = c( `pink cranberry`      = '#da627d',  
                       `navy blue`           = '#2d3047',  
                       `strong orange`       = '#f46036',  
                       `dusty lightblue`     = '#5b85aa', 	
                       `dusty plum`          = '#9c528b',
                       `portica yellow`      = '#f4d35e', 
                       `bright pink`         = '#da627d',  
                       `night blue`          = '#242449',   
                       `black treacle`       = '#000000',  
                       `unicorn white`       = '#FFFFFF' )  

   my_color_palette          = c('#da627d','#2d3047', 
                                                          '#da627d', '#242449',
                                                          '#f46036', '#5b85aa', 
                                                          '#9c528b', '#f4d35e' )
                            {
# Roxygen comments: 
#' Function to extract my_color_palette colors as hex codes
#'
#' @param ... Character names of my_color_palette 
#'
huntPalette <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (my_color_palette)

  my_color_palette[cols]
}
