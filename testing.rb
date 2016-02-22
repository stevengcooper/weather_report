require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require 'json'
require './condition.rb'
require 'httparty'
# require './current_hurricane.rb'
# require './forecast_ten_day.rb'
# require './astronomy.rb'
require './alerts.rb'

class Condition
  def initialize(zip_code)
    @zip_code = zip_code
    @results = JSON.parse(File.read("conditions.json"))
  end
end

class WeatherUndergroundTest < Minitest::Test

  def test_conditions_accept_zip_code
    durm = Condition.new(27703)
    assert_equal 27703, durm.zip_code
  end

  def test_conditions_returns_tempature_and_location
    durm = Condition.new(zip_code: 27703)
    assert_equal 49.6, durm.temp
    assert_equal "Durham, NC", durm.location
  end

  def test_conditions_return_wind_and_wind_direction_and_humidity
    durm = Condition.new(zip_code: 27703)
    assert_equal "From the ESE at 2.0 MPH Gusting to 2.0 MPH", durm.wind
    assert_equal "93%", durm.humidity
  end

  def test_conditions_return_rain_today_and_feels_like_temp
    durm = Condition.new(zip_code: 27703)
    assert_equal "0.09 in (2 mm)", durm.rain_today
    assert_equal "50", durm.feels_like
  end

  def test_alerts_class_exists_and_accepts_a_zip_code
    durm = Condition.new(zip_code: 27703)
    assert_equal 27703, durm.zip_code
  end

end
