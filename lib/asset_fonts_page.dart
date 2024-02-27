import 'package:flutter/material.dart';

class AssetFontsPage extends StatelessWidget {
  const AssetFontsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Assets Fonts')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'CloisterBlack',
              style: TextStyle(
                fontFamily: 'SomeFont',
                fontSize: 48,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'OldLondon',
              style: TextStyle(
                fontFamily: 'OldLondon',
                fontSize: 48,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'VampireWars',
              style: TextStyle(
                fontFamily: 'VampireWars',
                fontSize: 48,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Vampire\nWars\nItalic',
              style: TextStyle(
                fontFamily: 'VampireWars',
                fontSize: 36,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
