import 'package:flutter/material.dart';

class AssetImagesPage extends StatelessWidget {
  const AssetImagesPage({super.key});

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
              child: Image.asset(
                'assets/images/neon.png',
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
