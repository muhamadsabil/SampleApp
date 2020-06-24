import 'package:newbloodstore1flutterapp/networking/ApiProvider.dart';
import 'dart:async';
import 'package:newbloodstore1flutterapp/models/chuckCategories.dart';

class ChuckCategoryRepository {
  ApiProvider _provider = ApiProvider();

  Future<chuckCategories> fetchChuckCategoryData() async {
    final response = await _provider.get("jokes/categories");
    return chuckCategories.fromJson(response);
  }
}