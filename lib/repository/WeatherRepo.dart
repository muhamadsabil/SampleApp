import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:newbloodstore1flutterapp/models/Weather.dart';
class WeatherRepo{
  Future<Weather> getWeather(String city) async {
    final url = "https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=43ea6baaad7663dc17637e22ee6f78f2";
    final response = await http.get(url);

    if (response.statusCode == 200){
      final jsonResponse = jsonDecode(response.body);
      return Weather.fromJson(jsonResponse['main']);
    } else {
      throw Exception('No Such city exist, please try again');
    }
  }
}