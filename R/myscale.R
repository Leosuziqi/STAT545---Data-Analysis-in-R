
#' Scale
#'
#' @param input_value Numeric vector
#' @param algorithm Use either "log" for logarithm or "exp" for exponential
#'
#' @return
#' A numeric vector containing the scaled input.
#' @export
#'
#' @examples
#' myscale(10,"log")

myscale <-function(input_value,algorithm){
  purrr::map2_dbl(input_value,algorithm,scale_dbl)
}

scale_dbl <-function(input_value,algorithm){
  if(algorithm=="log"){
    input_value<-input_value[!is.na(input_value)]
    result<-log(input_value)
    result
  }else if(algorithm=="exp"){
    input_value<-input_value[!is.na(input_value)]
    result<-exp(input_value)
    result
  }else{
    stop("Incorrect scaling algorithm found.")
    # I used stop() instead of warning() here, because if the scaling algorithm is neither exp or log, the following calculations are meaningless and no need to continue.
  }
}
