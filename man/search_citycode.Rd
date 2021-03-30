\name{search_citycode}
\alias{search_citycode}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
search chinese city code by chinese name
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
search city code by city name in chinese
}
\usage{
search_citycode(city_name)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{city_name}{
%%     ~~Describe \code{x} here~~
the name of chinese city  (please input city_name in chinese)
}
}
\details{
Organized by Hu Zheng, updated on July 27, 2020
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...

return a dataframe. Which contain a series of matching city_name and
corresponding city codes
}
\references{
%% ~put references to the literature/web site here ~
https://lbs.amap.com/api/webservice/download
}
\author{
%%  ~~who you are~~
Hu Zheng
}
\note{
%%  ~~further notes~~

this data from Amap.
}



