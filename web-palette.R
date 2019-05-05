pinkpatheR <- function(){


webPalette <- function(){
my_color_palette = data.frame(hex        = c('#0198F5' ,  # 1. cta-blue 
                                             '#FA5E5B',   # 2. watermelon-fail
                                             '#FEC334',   # 3. notification-yellow
                                             '#31C052',   # 4. success-green
                                             '#DFE6F4',   # 5. grey-light
                                             '#A9BACA', 	# 6. grey-medium 	
                                             '#4A637B',   # 7. grey-dark
                                             '#000000',   # 8. black-treacle
                                             '#FFFFFF'    # 9. unicorn-white
                                            ),
                              colorname = c( "cta-blue "          ,
                                             "watermelon-fail"    ,
                                             "notification-yellow",
                                             "success-green"      ,
                                             "grey-light"         ,
                                             "grey-medium "       ,
                                             "grey-dark"          ,
                                             "black-treacle"      ,
                                             "unicorn-white"  )
                              )
  return(my_color_palette)
}
