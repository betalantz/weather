require_relative "weather/version"
require_relative "weather/cli"
require_relative "weather/scraper"
require_relative "weather/weather"

require 'pry'



module Weather
  class Error < StandardError; end
  # Your code goes here...
end
