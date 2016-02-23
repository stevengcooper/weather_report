require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require 'json'
require './condition.rb'
require 'httparty'
# require './current_hurricane.rb'
require './forecast.rb'
# require './astronomy.rb'
require './alerts.rb'

class WeatherUndergroundTest < Minitest::Test

  def test_conditions_class_exists
    durm = Condition.new()
    assert durm
  end

  def test_conditions_returns_tempature_and_location
    durm = Condition.new
    assert_equal 49.6, durm.temp
    assert_equal "Durham, NC", durm.location
  end

  def test_conditions_return_wind_and_wind_direction_and_humidity
    durm = Condition.new
    assert_equal "From the ESE at 2.0 MPH Gusting to 2.0 MPH", durm.wind
    assert_equal "93%", durm.humidity
  end

  def test_conditions_return_rain_today_and_feels_like_temp
    durm = Condition.new
    assert_equal "0.09 in (2 mm)", durm.rain_today
    assert_equal "50", durm.feels_like
  end

  def test_alerts_class_exists
    durm_alert = Alert.new()
    assert durm_alert
  end

  def test_alerts_returns_description
    durm = Alert.new()
    assert_equal "Flood Warning", durm.description
  end

  def test_alerts_returns_message_and_expires
    durm = Alert.new()
    assert_equal "6:00 AM CST on February 26, 2016", durm.expires
    assert durm.message
  end

  def test_alerts_exists_works_in_alerts_class
    durm = Alert.new()
    assert_equal "\n...Flood Warning now in effect until Thursday morning...\n\nThe Flood Warning continues for\n the Des Moines River at Des Moines se 6th St...or from below the \n center street dam...to Runnells.\n* Until Thursday morning.\n* At 3:00 PM Monday the stage was 23.3 feet...or 0.7 feet below \n flood stage.\n* Flood stage is 24.0 feet.\n* No flooding is occurring and minor flooding is forecast.\n* Forecast...rise to flood stage late this evening. Continue rising \n to 24.3 feet...or 0.3 feet above flood stage...midday Tuesday. \n Then begin falling and go below flood stage Thursday morning.\n* Impact...at 24.0 feet...the bike trail is closed east of Water \n Street. Portions of other bike trails are also affected.\n\n\nLat...Lon 4159 9356 4152 9333 4145 9333 4154 9356\n 4159 9366 4159 9356 \n\n\n\n\n", durm.alert_exists
  end

  def test_forecast_ten_day_class_exists
    durm = Forecast.new()
    assert durm
  end

end
