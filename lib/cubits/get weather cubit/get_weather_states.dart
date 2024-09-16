import 'package:weathe_app/model/weather_model.dart';

class WeatherStates {}

class weatherinitialState extends WeatherStates {}
class weatherLoadingState extends WeatherStates {
  final WeatherModel weatherModel;
  weatherLoadingState(this.weatherModel);
}
class weatherErrorState  extends WeatherStates {}


