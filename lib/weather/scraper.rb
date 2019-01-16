class Weather::Scraper
  attr_accessor :city

  def initialize(city)
    @city = city
  end
end