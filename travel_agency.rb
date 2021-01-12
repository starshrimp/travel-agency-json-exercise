require_relative './travel_agency_helper'
require_relative './country'

class TravelAgency
  include TravelAgencyHelper

  def show_country_data
    user_input = read_user_input
    country_data_as_json = fetch_country_data(user_input)

    # You can remove following two lines, once you don't need them anymore.
    # puts "\nThis is what country_data_as_json looks like:\n\n"
    puts country_data_as_json

    # Todos
    # ---
    # [ ] Create a Country object see `country.rb`
    # [ ] Display the country data using the dedicated method
    #     from the `Country` class
  end
end

TravelAgency.new.start
