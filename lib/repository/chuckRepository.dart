import 'package:newbloodstore1flutterapp/networking/ApiProvider.dart';
import 'package:newbloodstore1flutterapp/models/chuckResponses.dart';
import 'dart:async';

class ChuckRepository {
  ApiProvider _provider = ApiProvider();

  Future<chuckResponse> fetchChuckJoke(String category) async {
    final response = await _provider.get("jokes/random?category=" + category);
    return chuckResponse.fromJson(response);
  }
}