# getweather
我的第一个包，用来查询中国城市（包括县）的天气。使用的接口是高德地图的天气接口，至于如何匹配，以及接口调用量，可以查看高德地图的具体要求   

1. https://lbs.amap.com/api/webservice/guide/tools/flowlevel
2. https://lbs.amap.com/api/webservice/guide/api/weatherinfo/

目前这个只能查询中国城市（包括县）。以及未来四天的情况。


# 第一步安装三个必须的包
install.packages("jsonlite")

install.packages("stringr")

install.packages("curl")

# 第二步 安装我写的R包：这个包叫getweather

#### 下载上面那个getweather_0.1.0.tar.gz文件，然后使用Rsttudio安装这个文件

library(getweather)

# 第三步 设置我的高德api key
gaode_api <- "fb54dfc6b4c202cgsdsy69c792e7107"


# 第三步 使用我写的三个函数


# part 1 根据城市中文查找citycode

search_citycode(city_name = "北京")

search_citycode(city_name = "合肥")

search_citycode(city_name = "寿县")


# part 2 获得当前城市的天气

get_current_weather(gaode_key = gaode_api, city_code = "340422")


# part 3 获得未来城市的天气
temp_data <- get_future_weather(gaode_key = gaode_api, city_code = "340422")

这里数据框的行名字都有具体的解释，详情可以看高德的介绍文档：

1. https://lbs.amap.com/api/webservice/guide/api/weatherinfo/
2. https://lbs.amap.com/api/webservice/guide/tools/weather-code/






# 查看帮助
help("search_citycode")

help("get_future_weather")

help("get_current_weather")

### 获得更多详情，可以关注我的微信公众号：pypi       （图标是一个黑色的圆周率pi）也欢迎大家开issue，我将积极解答



##### 
