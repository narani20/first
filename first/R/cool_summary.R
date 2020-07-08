#' cool summary function
#'
#' @param Input data
#' @param Categorical variable in the data
#' @param Parmeter Numeric variable
#'
#' @importFrom plyr ddply
#' @importFrom plyr .
#' @importFrom dplyr summarise
#'
#' @export
#'
#' @examples cool_summary=function(data = iris, categorical="Species, numeric="Petal.Width)
#'
cool_summary=function(data, categorical, numeric)
{
  ddply(data, .(get(categorical)), summarise, mean=round(mean(get(numeric)),2),
         sd=round(sd(get(numeric)),2))
}


