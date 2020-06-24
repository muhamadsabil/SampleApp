import 'dart:async';
import 'package:newbloodstore1flutterapp/networking/responses.dart';
import 'package:newbloodstore1flutterapp/models/chuckResponses.dart';
import 'package:newbloodstore1flutterapp/repository/chuckRepository.dart';


class ChuckBloc {
  ChuckRepository _chuckRepository;
  StreamController _chuckDataController;
  bool _isStreaming;

  StreamSink<Response<chuckResponse>> get chuckDataSink =>
      _chuckDataController.sink;

  Stream<Response<chuckResponse>> get chuckDataStream =>
      _chuckDataController.stream;

  ChuckBloc(String category) {
    _chuckDataController = StreamController<Response<chuckResponse>>();
    _chuckRepository = ChuckRepository();
    _isStreaming = true;
    fetchChuckyJoke(category);
  }

  fetchChuckyJoke(String category) async {
    chuckDataSink.add(Response.loading('Getting a Chucky joke!'));
    try {
      chuckResponse chuckJoke = await _chuckRepository.fetchChuckJoke(category);
      if (_isStreaming) chuckDataSink.add(Response.completed(chuckJoke));
    } catch (e) {
      if (_isStreaming) chuckDataSink.add(Response.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _isStreaming = false;
    _chuckDataController?.close();
  }
}