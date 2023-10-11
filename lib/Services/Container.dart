import 'package:flutter/material.dart';
import 'package:piano_proj/models/soundmodel.dart';

class Rowcontainer extends StatelessWidget {
  Rowcontainer({
    super.key,
    required this.num,
  });

  final Soundmodel num;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            GestureDetector(
              onTap: () {
                num.playsound1();
              },
              child: Container(
                color: Colors.white,
                child: num.character != null
                    ? Container(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Text(
                            num.character!,
                            style: TextStyle(color: Colors.red, fontSize: 35),
                          ),
                        ),
                      )
                    : Container(
                        alignment: Alignment.center,
                        child: Text(''),
                      ),
              ),
            ),
            Positioned(
              top: -35,
              child: GestureDetector(
                onTap: () {
                  num.playsound2();
                },
                child: Container(
                  color: Colors.black,
                  width: 230,
                  height: 70,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
