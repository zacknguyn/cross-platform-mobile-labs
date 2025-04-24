// services/weather.dart
import 'package:lab9/services/location.dart';
import 'package:lab9/services/networking.dart';

const apiKey = 'YOUR_API_KEY'; // Replace with your WeatherAPI.com API key
const weatherAPIURL = 'https://api.weatherapi.com/v1/current.json';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper =
        NetworkHelper('$weatherAPIURL?key=$apiKey&q=$cityName&aqi=no');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '$weatherAPIURL?key=$apiKey&q=${location.latitude},${location.longitude}&aqi=no');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  // WeatherAPI.com condition codes are different from OpenWeatherMap
  String getWeatherIcon(int conditionCode) {
    // Day conditions (WeatherAPI.com codes)
    if (conditionCode == 1000) {
      return '☀️'; // Sunny
    } else if (conditionCode == 1003) {
      return '🌤️'; // Partly cloudy
    } else if (conditionCode >= 1006 && conditionCode <= 1009) {
      return '☁️'; // Cloudy
    } else if (conditionCode >= 1030 && conditionCode <= 1039) {
      return '🌫️'; // Mist, fog, etc.
    } else if (conditionCode >= 1063 && conditionCode <= 1069) {
      return '🌧️'; // Patchy rain
    } else if (conditionCode >= 1072 && conditionCode <= 1087) {
      return '🌩️'; // Thundery outbreaks
    } else if (conditionCode >= 1114 && conditionCode <= 1117) {
      return '❄️'; // Blowing snow
    } else if (conditionCode >= 1135 && conditionCode <= 1147) {
      return '🌫️'; // Fog
    } else if (conditionCode >= 1150 && conditionCode <= 1201) {
      return '🌧️'; // Light/medium/heavy rain
    } else if (conditionCode >= 1204 && conditionCode <= 1237) {
      return '🌨️'; // Sleet/snow
    } else if (conditionCode >= 1240 && conditionCode <= 1246) {
      return '🌧️'; // Light/heavy rain shower
    } else if (conditionCode >= 1249 && conditionCode <= 1264) {
      return '🌨️'; // Sleet/snow showers
    } else if (conditionCode >= 1273 && conditionCode <= 1282) {
      return '⛈️'; // Thunderstorm
    } else {
      return '🤷‍'; // Unknown
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
