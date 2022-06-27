require_relative './travel_agency_helper'

class TravelAgency
  include TravelAgencyHelper

  def show_country_data
    user_input = read_user_input
    country_data_as_json = fetch_country_data(user_input)

    # You can remove following two lines, once you don't need them anymore.
    # puts "\nThis is what country_data_as_json looks like:\n\n"
    puts country_data_as_json

    # Todo:
    # Investigate the output from `country_data_as_json`
    # Parse the content and display the data you want (see the Examples in the README description).
  end
end

TravelAgency.new.start
