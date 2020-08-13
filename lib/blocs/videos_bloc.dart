import 'dart:async';
import 'package:favorite_youtube/api.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:favorite_youtube/models/videos.dart';

class VideosBoc implements BlocBase {
  Api api;

  List<Video> videos;

  final _videosController = StreamController();
  Stream get outVideos => _videosController.stream;

  final _searchController = StreamController();
  Sink get inSearch => _searchController.sink;

  VideosBoc() {
    api = Api();

    _searchController.stream.listen(_search);
  }

  @override
  void dispose() {
    _videosController.close();
    _searchController.close();
  }

  void _search(String search) async {
    videos = await api.search(search);
  }
}
