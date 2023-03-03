## Functions

airtemps <- c(212, 30.3, 78, 32)
celsius1 <- (airtemps[1]-32)*5/9
celsius2 <- (airtemps[2]-32)*5/9
celsius3 <- (airtemps[3]-32)*5/9

fahr_to_celsius <- function(fahr) {
  celsius <- (fahr-32)*5/9
  return(celsius)
}

celsius11 <- fahr_to_celsius(airtemps[1])

celscius4 <- fahr_to_celsius(airtemps[1])

## Celsius to Fahr

#' Title
#'
#' @param cels 
#'
#' @return
#' @export
#'
#' @examples
cel_to_fahr <- function(cels){
  fahr <- (cels*9/5 + 32)
  
  return(fahr)
  
}

## testing
airtemps_c <- fahr_to_celsius(airtemps)

airtemps_f <- cel_to_fahr(airtemps_c)


## Ggolot functions

custom_theme <- function(base_size = 9) {
  ggplot2::theme(
    axis.ticks       = ggplot2::element_blank(),
    text             = ggplot2::element_text(family = 'Helvetica', color = 'gray30', size = base_size),
    plot.title       = ggplot2::element_text(size = ggplot2::rel(1.25), hjust = 0.5, face = 'bold'),
    panel.background = ggplot2::element_blank(),
    legend.position  = 'right',
    panel.border     = ggplot2::element_blank(),
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major = ggplot2::element_line(colour = 'grey90', size = .25),
    legend.key       = ggplot2::element_rect(colour = NA, fill = NA),
    axis.line        = ggplot2::element_blank()
  )
}

library(ggplot2)

ggplot(temps_df, mapping=aes(x=fahr, y=celsius, color=kelvin)) +
  geom_point() +
  custom_theme(10)


