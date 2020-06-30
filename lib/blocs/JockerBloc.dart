import 'dart:async';
import 'package:newbloodstore1flutterapp/networking/Responses.dart';
import 'package:newbloodstore1flutterapp/models/JockerResponse.dart';
import 'package:newbloodstore1flutterapp/repository/JockerRepository.dart';


class JockerBloc {
  JockerRepository _chuckRepository;
  StreamController _chuckDataController;
  bool _isStreaming;

  StreamSink<Response<JokerResponse>> get chuckDataSink =>
      _chuckDataController.sink;

  Stream<Response<JokerResponse>> get chuckDataStream =>
      _chuckDataController.stream;

  JockerBloc(String category) {
    _chuckDataController = StreamController<Response<JokerResponse>>();
    _chuckRepository = JockerRepository();
    _isStreaming = true;
    fetchChuckyJoke(category);
  }

  fetchChuckyJoke(String category) async {
    chuckDataSink.add(Response.loading('Getting a Chucky joke!'));
    try {
      JokerResponse chuckJoke = await _chuckRepository.fetchJockerJoke(category);
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