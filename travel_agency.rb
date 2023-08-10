require_relative './travel_agency_helper'
require "json"

class TravelAgency
  include TravelAgencyHelper

  def show_country_data
    user_input = read_user_input
    country_data_as_json = fetch_country_data(user_input)
    country_data = JSON.parse(country_data_as_json)

     puts "Name: #{country_data[0]["name"]["common"]}"
    puts "Official Name: #{country_data[0]["name"]["official"]}"
    spellings = country_data[0]["altSpellings"]
    joined_spellings = spellings.join(", ")
    puts "Alternative Spellings: #{joined_spellings}"
    puts "Capital: #{country_data[0]["capital"][0]}"
    puts "FIFA Code: #{country_data[0]["fifa"]}"
    currency_code = country_data[0]["currencies"].keys.first
    currency_name = country_data[0]["currencies"][currency_code]["name"]
    currency_symbol = country_data[0]["currencies"][currency_code]["symbol"]
    puts "Currency: #{currency_name}"
    borders = country_data[0]["borders"]
    joined_borders = borders.join(", ")
    puts "Region: #{country_data[0]["region"]}"
    puts "Switzerland shares borders with: #{joined_borders}"

  end
  
end

TravelAgency.new.start
