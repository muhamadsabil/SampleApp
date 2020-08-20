import 'package:newbloodstore1flutterapp/models/Weather.dart';
import 'package:newbloodstore1flutterapp/repository/WeatherRepo.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:newbloodstore1flutterapp/models/ApiResponses.dart';

class WeatherBlock {
  WeatherRepo weatherRepo;

  StreamController weatherListController;

  StreamSink<ApiResponse<Weather>> get weatherListSink =>
      weatherListController.sink;

  Stream<ApiResponse<Weather>> get weatherListStream =>
      weatherListController.stream;

  WeatherBlock() {
    weatherRepo = WeatherRepo();
    weatherListController = StreamController<ApiResponse<Weather>>();
    fetchWeatherResultList('Calicut');
  }

  fetchWeatherResultList(String city) async {
    weatherListSink.add(ApiResponse.loading('Fetching weather podcasts'));
    try {
      Weather weather = await weatherRepo.getWeather(city);
      weatherListSink.add(ApiResponse.completed(weather));
    } catch (e) {
      weatherListSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    weatherListController?.close();
  }
}