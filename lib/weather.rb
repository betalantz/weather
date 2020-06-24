require 'dotenv/load'
require 'pry'
require 'httparty'

require_relative "weather/version"
require_relative "weather/cli"
require_relative "weather/scraper"
require_relative "weather/weather"




module Weather
  class Error < StandardError; end
  # Your code goes here...
end
