require 'open-uri'

class CountriesApi
  RESTCOUNTRY_ENDPOINT_URL = 'https://restcountries.com/v3.1/alpha'.freeze

  def fetch_country_data(country_code)
    call_api(country_code).tap { puts "" }
  end

  private

  def call_api(country_code)
    url = generate_url(country_code)
    URI.parse(url).open.read
  rescue OpenURI::HTTPError => _
    "{}"
  end

  def generate_url(country_code)
    "#{RESTCOUNTRY_ENDPOINT_URL}/#{country_code}"
  end
end
