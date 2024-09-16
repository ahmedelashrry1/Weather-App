import 'package:flutter/material.dart';

MaterialColor getWeatherColor(String? condation) {
  switch (condation) {
    case "Sunny":
      return Colors.yellow;
    case "Partly cloudy":
      return Colors.blue;
    case "Cloudy":
      return Colors.grey;
    case "Overcast":
      return Colors.grey;
    case "Mist":
      return Colors.blueGrey;
    case "Patchy rain possible":
      return Colors.lightBlue;
    case "Patchy snow possible":
      return Colors.lightBlue;
    case "Patchy sleet possible":
      return Colors.blueGrey;
    case "Patchy freezing drizzle possible":
      return Colors.cyan;
    case "Thundery outbreaks possible":
      return Colors.deepPurple;
    case "Blowing snow":
    case "Blizzard":
      return Colors.blueGrey;
    case "Fog":
    case "Freezing fog":
      return Colors.grey;
    case "Light drizzle":
    case "Patchy light drizzle":
      return Colors.blue;
    case "Heavy freezing drizzle":
      return Colors.cyan;
    case "Patchy light rain":
    case "Light rain":
      return Colors.blue;
    case "Moderate rain":
      return Colors.blue;
    case "Heavy rain":
      return Colors.indigo;
    case "Light sleet":
    case "Moderate or heavy sleet":
      return Colors.lightBlue;
    case "Light snow":
    case "Moderate snow":
    case "Heavy snow":
      return Colors.grey;
    case "Ice pellets":
      return Colors.blueGrey;
    case "Torrential rain shower":
      return Colors.indigo;
    case "Light rain shower":
    case "Moderate or heavy rain shower":
      return Colors.lightBlue;
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
      return Colors.deepPurple;
    default:
      return Colors.blueGrey;
  }
}
