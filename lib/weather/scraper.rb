class Weather::Scraper
  attr_accessor :zip, :country, :key

  def initialize(zip)
    @zip = zip
    @country = "US"
    @key = "1a10f77b2f66b575d11bf68a30ac3296"

  end


  def fetch_data
    url = "http://api.openweathermap.org/data/2.5/weather?zip=#{@zip},#{@country}&APPID=#{key}"


  end
end