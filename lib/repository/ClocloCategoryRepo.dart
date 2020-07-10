import 'package:newbloodstore1flutterapp/networking/ApiBaseHelper.dart';
import 'package:newbloodstore1flutterapp/models/Photos.dart';
import 'package:newbloodstore1flutterapp/networking/ClocloApiProvider.dart';

import 'dart:async';


class ClocloCategoryRepository {
  final String _client_id = "nfvjQTV-AwYW1LEe-tQEVcNZDZbyCXVKRj4zhOXhpqo";

  ClocloApiProvider _helper = ClocloApiProvider();

  Future<List<Results>> fetchClocloPhotosList() async {
    final response = await _helper.get("photos?query=canada&client_id=$_client_id");
    return Photos.fromJson(response).results;
  }
}