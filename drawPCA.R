drawPCA        <- function(dataset                  = dataset            , 
                           outcome                  = "Group"            , 
                           observationsLabels       = "name"             , 
                           
                           title_custom             =  ""                ,
                           subtitle_custom          =  ""                ,
                           caption_custom           =  ""                ,
                           
                           controls_label_in_legend = 'controls '        ,
                           cases_label_in_legend    = 'cases    '        ,
                           
                           controls_color           = "#5b85aa"          ,
                           cases_color              = "#f46036"          ,
                           
                           title_color              = "#486a88"          ,
                           subtitle_color           = "#517799"          ,
                           caption_color            = "#517799"          ,
                           
                           title_size               = 12                 ,
                           subtitle_size            =  8                 ,
                           caption_size             =  6                 ,
                           
                           title_hjust              = 0.5                , 
                           subtitle_hjust           = 1                  , 
                           caption_hjust            = 1                 ){
              
              # Allocate toRemove before re-allocating to vector of values from adatframe's column
              toRemove           <- c(outcome, observationsLabels )
              
              # Attach dataset to be able to order ! wut R sometimes
              # found here: https://stackoverflow.com/questions/19463137/error-in-evalexpr-envir-enclos-object-not-found
              attach(dataset, )
              dataset <- dataset[order(Group),]
              #detach() as best practice
              detach(dataset)
              
              # Use user provided column names to store class info (Group, 1 or 0), observations label
              outcome            <- dataset[[outcome]] 
              observationsLabels <- dataset[[observationsLabels]]             
              
              # Remove metadata column 
              dataset            <- dataset[ , !(names(dataset) %in% toRemove)]                 
              
              # add rownames
              rownames(dataset)  <- observationsLabels;
              
              samples <- rownames(dataset)
              rownames(dataset) <- samples
              
              # PCA
              pcaObj <- prcomp(~., data = dataset, center = TRUE, scale = TRUE);
              
              # explained variance
              percVar <- round(pcaObj$sdev^2 / sum(pcaObj$sdev^2), 3) * 100;
              
              # labels
              observationsLabels <- rownames(pcaObj$x);
              
              # plotting, label everything a control
              toPlot <- data.frame(PC1   = pcaObj$x[, 1], 
                                   PC2   = pcaObj$x[, 2], 
                                   group = controls_label_in_legend, stringsAsFactors = FALSE);
              
              # rename whatever is in Group 1 to cases
              toPlot$group[outcome == 1] = cases_label_in_legend;
              
              PCA_plot <- ggplot(data = toPlot, mapping = aes(x = PC1, y = PC2, color = group)) + 
                geom_point(size = 3) + 
                scale_color_manual(values=c(cases_color, controls_color)) +
                theme_gray()+
                xlab(paste0('PC1, % var: ', percVar[1])) +
                ylab(paste0('PC2, % var: ', percVar[2])) +
                ggtitle( title_custom, subtitle = subtitle_custom ) +
                theme(plot.title    = element_text(color = title_color   , size  = title_size   ,  face = "bold"  , hjust = title_hjust   ),
                      plot.subtitle = element_text(color = subtitle_color, size  = subtitle_size,  face = "plain" , hjust = subtitle_hjust),
                      plot.caption  = element_text(color = subtitle_color, size  = caption_size ,  face = "italic", hjust = caption_hjust ))
         return(PCA_plot)}
