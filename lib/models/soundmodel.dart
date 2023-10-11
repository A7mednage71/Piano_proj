import 'dart:ffi';

import 'package:audioplayers/audioplayers.dart';

class Soundmodel {
  final String sound1;
  final String sound2;
  final String? character;

  const Soundmodel({required this.sound1, required this.sound2 , this.character});

  playsound1() {
    final player = AudioPlayer();
    player.play(AssetSource(sound1));
  }

  playsound2() {
    final player = AudioPlayer();
    player.play(AssetSource(sound2));
  }
}
