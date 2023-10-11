import 'package:flutter/material.dart';
import 'package:piano_proj/Services/Container.dart';
import 'package:piano_proj/models/soundmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<Soundmodel> soundlist = const [
    Soundmodel(sound1: 'note1.wav', sound2: 'note7.wav'),
    Soundmodel(sound1: 'note2.wav', sound2: 'note6.wav', character: 'O'),
    Soundmodel(sound1: 'note3.wav', sound2: 'note5.wav', character: 'N'),
    Soundmodel(sound1: 'note4.wav', sound2: 'note7.wav', character: 'A'),
    Soundmodel(sound1: 'note5.wav', sound2: 'note3.wav', character: 'I'),
    Soundmodel(sound1: 'note6.wav', sound2: 'note2.wav', character: 'P'),
    Soundmodel(sound1: 'note7.wav', sound2: 'note1.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: soundlist
              .map((e) => Rowcontainer(
                    num: e,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
