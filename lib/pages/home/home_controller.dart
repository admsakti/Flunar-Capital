import 'package:flunar_capital/providers/song_provider.dart';
import 'package:get/get.dart';
import 'package:radio_player/radio_player.dart';

class HomeController extends GetxController {
  RadioPlayer radioPlayer = RadioPlayer();

  var isPause = false.obs;
  var metadata = Rxn<List<String>>();
  var detailSong = Rxn<Map<String, dynamic>>();

  void initRadioPlayer() {
    radioPlayer.setChannel(
      title: "Gensokyo Radio",
      url: 'https://stream.gensokyoradio.net/1',
    );

    radioPlayer.stateStream.listen((value) => isPause.value = value);

    radioPlayer.metadataStream.listen((value) => metadata.value = value);
  }

  void updateDetailSong() {
    SongProvider().getDetailSong().then((value) {
      detailSong.value = value;
    });
  }

  @override
  void onInit() {
    initRadioPlayer();
    updateDetailSong();

    ever(metadata, (_) {
      updateDetailSong();
    });

    super.onInit();
  }
}
