import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weathe_app/cubits/get%20weather%20cubit/get_weather_cubit.dart';
import 'package:weathe_app/cubits/get%20weather%20cubit/get_weather_states.dart';
import 'package:weathe_app/model/theam_moel.dart';
// import 'package:weathe_app/cubits/get%20weather%20cubit/get_weather_states.dart';
// import 'package:weathe_app/view/home_view.dart';
import 'package:weathe_app/view/splach_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<GetWeatherCubit, WeatherStates>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                primarySwatch: getWeatherColor(
                    BlocProvider.of<GetWeatherCubit>(context).weatherModel?.weathercondation),
              ),
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            );
          },
        );
      }),
    );
  }
}