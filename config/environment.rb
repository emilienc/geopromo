# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Geopromo::Application.initialize!

Geocode.geocoder = Graticule.service(:yahoo).new 'your_api_key'