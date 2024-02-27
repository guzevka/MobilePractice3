import 'package:flutter/material.dart';

// Этот класс представляет собой виджет без сохранения состояния, 
//что означает, что он не поддерживает никакого состояния и является неизменяемым.
class AssetImagesPage extends StatelessWidget {
  const AssetImagesPage({super.key});

// Метод build определяет внешний вид виджета. Он создает каркас с панелью приложений и телом.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Assets images')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.blue.withOpacity(0.1),
              width: 200,
              height: 250,
              // С помощью виджета Image.asset - отображаются изображения 
              // Виджет Image.asset используется для отображения изображений из ресурсов приложения. 
              //Он принимает путь к ресурсу в качестве параметра и также может обрабатывать ошибки с 
              //помощью свойства error Builder.
              child: Image.asset(
                'assets/images/neon.png',
                // Первый виджет Image.asset включает в себя конструктор ошибок, который отображает 
                //сообщение об ошибке и значок ошибки, если изображение не загружается.
                errorBuilder: (context, error, stackTrace) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.error),
                      ),
                      Text(
                        error.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
            ),
            Image.asset(
              'assets/images/neo_logo.png',
              color: Colors.blue,
              colorBlendMode: BlendMode.darken,
            ),
          ],
        ),
      ),
    );
  }
}
