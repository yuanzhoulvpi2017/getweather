#' @export
search_citycode <- function(city_name) {
  if (!requireNamespace("stringr", quietly = TRUE)) {
    stop("Package \"stringr\" needed for this function to work. Please install it.", call. = FALSE)
  }
  all_city_name_code <- getweather::city_code

  search_result <- stringr::str_detect(string = all_city_name_code$chinese_name,
                      pattern = city_name[1])
  return(all_city_name_code[search_result, ])

}


#' @export
get_current_weather <- function(gaode_key, city_code) {
  if (!requireNamespace("jsonlite", quietly = TRUE)) {
    stop("Package \"jsonlite\" needed for this function to work. Please install it.", call. = FALSE)
  }
  temp_url <- paste0("https://restapi.amap.com/v3/weather/weatherInfo?city=",
                     city_code,
                     "&key=",
                     gaode_key,
                     "&extensions=base")

  all_result <- jsonlite::fromJSON(temp_url)

  if (all_result$info == "INVALID_USER_KEY") {
    warning("invalid user key") #
  } else {
    if (length(all_result$lives[[1]]) == 0) {
      warning("invalid city code") #
    } else {
      return(all_result$lives)
    }
  }


}






#' @export
get_future_weather <- function(gaode_key, city_code) {
  if (!requireNamespace("jsonlite", quietly = TRUE)) {
    stop("Package \"jsonlite\" needed for this function to work. Please install it.", call. = FALSE)
  }
  temp_url <- paste0("https://restapi.amap.com/v3/weather/weatherInfo?city=",
                     city_code,
                     "&key=",
                     gaode_key,
                     "&extensions=all")
  all_result <- jsonlite::fromJSON(temp_url)

  if (all_result$info == "INVALID_USER_KEY") {
    warning("invalid user key") #
  } else {
    if (length(all_result$forecasts$casts[[1]]) == 0) {
      warning("invalid city code") #
    } else {

      head_info <- all_result$forecasts
      forecasts_ <- all_result$forecasts$casts[[1]]

      forecasts_['city'] <- head_info$city
      forecasts_['adcode'] <- head_info$adcode
      forecasts_['province'] <- head_info$province
      forecasts_['reporttime'] <- head_info$reporttime


      return(forecasts_)
    }
  }


}



#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

