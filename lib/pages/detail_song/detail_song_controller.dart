import 'package:get/get.dart';

class DetailSongController extends GetxController {
  Map<String, dynamic> _detailSong = {};

  Map<String, dynamic> get detailSong => _detailSong;

  void updateDetailSong(Map<String, dynamic> data) {
    _detailSong = data;
  }
}
