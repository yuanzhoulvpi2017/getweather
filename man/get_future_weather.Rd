\name{get_future_weather}
\alias{get_future_weather}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
get future weather of chinese city by city code
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
use the weather api of Amap. return future weather of city by city code.
First. You need a Amap api key.

second. You should get the city code by city name
}
\usage{
get_future_weather(gaode_key, city_code)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gaode_key}{
  this is a chr ,you can get this key from https://console.amap.com/dev/index
%%     ~~Describe \code{gaode_key} here~~
}
  \item{city_code}{

  this is a chr, you can get the citycode from  https://a.amap.com/lbs/static/file/AMap_adcode_citycode.xlsx.zip
%%     ~~Describe \code{city_code} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...

return a dataframe.
for more detail . you can get more information from: https://lbs.amap.com/api/webservice/guide/api/weatherinfo/
}
\references{
%% ~put references to the literature/web site here ~
https://lbs.amap.com/api/webservice/download

}
\author{
%%  ~~who you are~~
huzheng
}
\note{
%%  ~~further notes~~
for more information, you can click this link: https://github.com/yuanzhoulvpi2017

}

