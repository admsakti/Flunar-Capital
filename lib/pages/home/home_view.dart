import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

import './home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Flunar Capital"),
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(AppRoutes.favorites),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Obx(() => Image.network(
                      "https://gensokyoradio.net/images/albums/500/${controller.detailSong.value?['MISC']['ALBUMART']}",
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(height: 80),
              Obx(
                () => Text(
                  controller.detailSong.value?["SONGINFO"]["TITLE"] ?? 'Title',
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Obx(
                () => Text(
                  controller.detailSong.value?["SONGINFO"]["ARTIST"] ??
                      'Artist',
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => IconButton(
                      onPressed: () {
                        controller.isPause.value
                            ? controller.radioPlayer.pause()
                            : controller.radioPlayer.play();
                      },
                      icon: Icon(
                        controller.isPause.value
                            ? Icons.pause_rounded
                            : Icons.play_arrow_rounded,
                      ),
                      iconSize: 72,
                      tooltip: 'Control button',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
