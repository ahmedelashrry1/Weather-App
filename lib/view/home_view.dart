// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weathe_app/cubits/get%20weather%20cubit/get_weather_cubit.dart';
import 'package:weathe_app/cubits/get%20weather%20cubit/get_weather_states.dart';
import 'package:weathe_app/view/search_view.dart';
import 'package:weathe_app/widgets/no_weather_body.dart';
import 'package:weathe_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(color: Colors.black, fontSize: 25.0),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchView(),
                ),
              );
            },
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if (state is weatherinitialState) {
            return NoWeatherBody();
          } else if (state is weatherLoadingState) {
            return WeatherInfoBody(weatherModel: state.weatherModel);
          } else {
            return Text("error in weather loading state", style: TextStyle(color: Colors.red));
          }
        },
      ),
    );
  }
}