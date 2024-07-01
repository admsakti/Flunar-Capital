import 'dart:convert';

import 'package:get/get.dart';

class SongProvider extends GetConnect {
  Future<Map<String, dynamic>> getDetailSong() async {
    var response = await get('https://gensokyoradio.net/json/');
    return jsonDecode(response.body);
  }
}
