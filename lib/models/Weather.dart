
class Weather{
  final temp;
  final pressure;
  final  humidity;
  final temp_max;
  final  temp_min;
  final feels_like;


  double get getTemp => temp-272.5;
  double get getMaxTemp => temp_max-272.5;
  double get getMinTemp=> temp_min -272.5;

  Weather(this.temp, this.pressure, this.humidity, this.temp_max, this.temp_min, this.feels_like);

  factory Weather.fromJson(final json){
    return Weather(
        json["temp"],
        json["pressure"],
        json["humidity"],
        json["temp_max"],
        json["temp_min"],
        json["feels_like"]
    );
  }
}
