import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weathe_app/model/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = "52d78cc0c93f4a9eaae103708240509";

  WeatherService(this.dio);
  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get("$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1");

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? 'Failed to get weather data';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('Failed to get weather data');
    }
  }
}
