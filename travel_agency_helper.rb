require_relative './countries_api'

module TravelAgencyHelper
  def start
    display_banner
    display_help

    loop { show_country_data }
  end

  def countries_api
    @countries_api ||= CountriesApi.new
  end

  def fetch_country_data(country_code)
    countries_api.fetch_country_data(country_code)
  end

  def display_help
    puts <<~EOF
      How it works:

        Enter a country code (e.g. "CHE") to show a country's details.
        (To quit travelling, enter "exit")

    EOF
  end

  def display_banner
    puts <<~EOF
      *************************************
      *                                   *
      *              WELCOME              *
      *                to                 *
      *           TRAVEL AGENCY           *
      *                                   *
      *************************************

    EOF
  end

  def read_user_input
    print "\nEnter country code: "
    gets.chomp.tap do |input|
      quit_program if input.downcase == "exit"
    end
  end

  def quit_program
    puts ""
    puts "Bye, come again!"
    exit 0
  end
end
