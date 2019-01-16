class Weather::CLI

  def start
    puts "Welcome to the Weather App!"
    ask_city
  end

  def ask_city
    puts "Enter the zip code to see the weather forecast"
    input = gets.strip.to_i
    zip = validate_input(input)
    api = Weather::Scraper.new(zip)
    api.fetch_data
  end


  def validate_input(input)
    until input >= 02101 && input <= 99524
      puts "Please enter a valid zip code"
      input = gets.strip.to_i
    end
    input
  end
end