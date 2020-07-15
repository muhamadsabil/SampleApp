import 'dart:async';

import 'package:newbloodstore1flutterapp/models/Photos.dart';
import 'package:newbloodstore1flutterapp/repository/ClocloCategoryRepo.dart';
import 'package:newbloodstore1flutterapp/models/ApiResponses.dart';

class ClocloPhotosBloc {
  ClocloCategoryRepository _clocloRepository;

  StreamController _clocloListController;

  StreamSink<ApiResponse<List<Results>>> get clocloListSink =>
      _clocloListController.sink;

  Stream<ApiResponse<List<Results>>> get clocloListStream =>
      _clocloListController.stream;

  ClocloPhotosBloc() {
    _clocloListController = StreamController<ApiResponse<List<Results>>>();
    _clocloRepository = ClocloCategoryRepository();
    fetchClocloPhotosList();
//  fetchClocloPrifilePhoto();
  }

  fetchClocloPhotosList() async {
    clocloListSink.add(ApiResponse.loading('Fetching Popular fotos'));
    try {
      List<Results> photos = await _clocloRepository.fetchClocloPhotosList();
      clocloListSink.add(ApiResponse.completed(photos));
    } catch (e) {
      clocloListSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }


  dispose() {
    _clocloListController?.close();
  }
}