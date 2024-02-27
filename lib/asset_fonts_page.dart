import 'package:flutter/material.dart';

// AssetFontsPage является StatelessWidget, что означает, 
//что он не изменяет свое состояние во время выполнения.
class AssetFontsPage extends StatelessWidget {
  const AssetFontsPage({super.key});

  // Метод build определяет, как будет выглядеть виджет страницы.
  @override
  Widget build(BuildContext context) {
    // Внутри Scaffold создается основная структура страницы, включая заголовок и тело.
    return Scaffold(
      appBar: AppBar(title: const Text('Assets Fonts')),
      // В теле страницы используется Center и Column для размещения текстовых виджетов, 
      //каждый из которых использует различные пользовательские шрифты из ресурсов.
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'CloisterBlack',
              // Для каждого текстового виджета указано имя шрифта (fontFamily) и размер шрифта (fontSize).
              // Каждый текстовый виджет демонстрирует использование различных пользовательских шрифтов, 
              //таких как 'SomeFont', 'OldLondon' и 'VampireWars'.
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
                // Для одного из текстовых виджетов также указано использование курсива (fontStyle: FontStyle.italic).
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
