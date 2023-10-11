import 'package:audioplayers/audioplayers.dart';

class Soundmodel {
  final String sound1;
  final String sound2;
  final String? character;
  final bool Continue;

  const Soundmodel(
      {required this.sound1, required this.sound2, this.character , required this.Continue});

  playsound1() {
    final player = AudioPlayer();
    player.play(AssetSource(sound1));
  }

  playsound2() {
    final player = AudioPlayer();
    player.play(AssetSource(sound2));
  }
}
