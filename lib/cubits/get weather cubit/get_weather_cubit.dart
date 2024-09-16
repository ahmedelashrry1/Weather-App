import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weathe_app/cubits/get%20weather%20cubit/get_weather_states.dart';
import 'package:weathe_app/model/weather_model.dart';
import 'package:weathe_app/service/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(weatherinitialState());

  get weatherModel => null;
getWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel =
          await WeatherService(Dio()).getWeather(cityName: cityName);
  
        emit(weatherLoadingState(weatherModel));
    } catch (e) {
      emit(weatherErrorState());
    }
  }
}
