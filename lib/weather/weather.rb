class Weather::Weather
  attr_accessor :temp, :pressure, :humidity, :city
  @@all = []

  def self.all
    @@all
  end
  
  def initialize(temp, pressure, humidity, city)
    @temp, @pressure, @humidity, @city = temp, pressure, humidity, city
    @@all << self
  end
end