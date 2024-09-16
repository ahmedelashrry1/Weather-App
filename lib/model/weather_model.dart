// ignore_for_file: empty_constructor_bodies, non_constant_identifier_names

class WeatherModel {
  final String? cityName;
  final String? image;
  final DateTime date;
  final double? MaxTemp;
  final double? temp;
  final double? MinTemp;
  final String? Weathercondation;

  WeatherModel(
      {required this.cityName,
      required this.temp,
      required this.image,
      required this.date,
      required this.MaxTemp,
      required this.MinTemp,
      required this.Weathercondation});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      temp: json['current']['temp_c'],
      image: json['current']['condition']['icon'],
      date:DateTime.parse( json['location']['localtime']),
      MaxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      MinTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      Weathercondation: json['current']['condition']['text'],
    );
  }
}
