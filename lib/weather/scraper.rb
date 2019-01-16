class Weather::Scraper
  attr_accessor :zip, :country, :key

  def initialize(zip)
    @zip = zip
    @country = "US"
    @key = "1a10f77b2f66b575d11bf68a30ac3296"

  end
  



  def fetch_data
    binding.pry
    url = "http://api.openweathermap.org/data/2.5/weather?zip=#{@zip},#{@country}&units=imperial&APPID=#{key}"
    response = HTTParty.get(url)
    #response.parsed_response  #might not be needed 
    temp = response["main"]["temp"]
    pressure = response["main"]["pressure"]
    humidity = response["main"]["humidity"]
    city = response["name"]
    
  end
  
#   {"coord"=>{"lon"=>-94.61, "lat"=>38.85},
# "weather"=>
#   [{"id"=>741, "main"=>"Fog", "description"=>"fog", "icon"=>"50d"},
#   {"id"=>701, "main"=>"Mist", "description"=>"mist", "icon"=>"50d"}],
# "base"=>"stations",
# "main"=>
#   {"temp"=>273.43,
#   "pressure"=>1021,
#   "humidity"=>100,
#   "temp_min"=>272.55,
#   "temp_max"=>274.25},
# "visibility"=>11265,
# "wind"=>{"speed"=>2.1, "deg"=>120},
# "clouds"=>{"all"=>90},
# "dt"=>1547668500,
# "sys"=>
#   {"type"=>1,
#   "id"=>4246,
#   "message"=>0.0273,
#   "country"=>"US",
#   "sunrise"=>1547645684,
#   "sunset"=>1547680951},
# "id"=>420012490,
# "name"=>"Overland Park",
# "cod"=>200}
  
  
end