require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require 'json'
require './condition.rb'
require 'httparty'
# require './current_hurricane.rb'
require './forecast.rb'
require './astronomy.rb'
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

  def test_forecast_returns_an_extended_forcast
    durm = Forecast.new()
    assert_equal [["Monday", "Cloudy with rain. Lows overnight in the low 40s."], ["Monday Night", "Rain likely. Low 43F. Winds ENE at 5 to 10 mph. Chance of rain 100%. Rainfall around a half an inch."], ["Tuesday", "Cloudy with rain ending in the afternoon. High 49F. Winds NNE at 5 to 10 mph. Chance of rain 90%."], ["Tuesday Night", "Rain showers in the evening becoming a steady light rain overnight. Low 46F. Winds light and variable. Chance of rain 60%."], ["Wednesday", "Becoming windy with thunderstorms likely. A few storms may be severe. High 69F. Winds SSE at 25 to 35 mph. Chance of rain 90%."], ["Wednesday Night", "Showers in the evening, then partly cloudy overnight. Low 44F. Winds SSW at 15 to 25 mph. Chance of rain 70%."], ["Thursday", "Windy with increasing clouds. High 54F. Winds WSW at 20 to 30 mph."], ["Thursday Night", "Mainly clear skies. Low 33F. Winds W at 10 to 15 mph."], ["Friday", "Mainly sunny. High 51F. Winds NW at 10 to 20 mph."], ["Friday Night", "Clear skies. Low 28F. Winds light and variable."], ["Saturday", "Sunny. High 51F. Winds WSW at 5 to 10 mph."], ["Saturday Night", "Clear. Low 32F. Winds light and variable."], ["Sunday", "Sunny skies. High 63F. Winds SW at 5 to 10 mph."], ["Sunday Night", "Clear. Low 39F. Winds light and variable."], ["Monday", "Generally sunny despite a few afternoon clouds. High near 65F. Winds SW at 10 to 15 mph."], ["Monday Night", "Some clouds early will give way to generally clear conditions overnight. Low 36F. Winds WSW at 5 to 10 mph."], ["Tuesday", "Mainly sunny. High 58F. Winds NNW at 5 to 10 mph."], ["Tuesday Night", "Mostly clear skies. Low 34F. Winds light and variable."], ["Wednesday", "Intervals of clouds and sunshine. High 57F. Winds ESE at 5 to 10 mph."], ["Wednesday Night", "Overcast with rain showers at times. Low near 40F. Winds light and variable. Chance of rain 60%."]], durm.forecast
  end

  def test_astronomy_class_exists
    durm = Astronomy.new()
    assert durm
  end

  def test_astronomy_returns_sunrise
    durm = Astronomy.new()
    assert_equal "Sunrise is at 6:55 AM.", durm.sunrise
  end

  def test_astronomy_returns_sunset
    durm = Astronomy.new()
    assert_equal "Sunset is at 6:03 PM.", durm.sunset
  end
end
