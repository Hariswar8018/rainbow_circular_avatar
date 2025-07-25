import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainbow_circular_avatar/rainbow_circular_avatar.dart';

void main() {
  testWidgets('RainbowCircularAvatar renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
       MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Spacer(),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    RainbowCircularAvatar(
                      imageUrl: 'https://i.ibb.co/0TC6Z4w/7957697b-3002-4f79-88ae-15792206fed7.jpg',
                      radius: 100,
                      borderWidth: 8,
                      colors: [
                        Colors.red,
                        Colors.orange,
                        Colors.yellow,
                        Colors.green,
                        Colors.blue,
                        Colors.indigo,
                        Colors.purple,
                        Colors.red
                      ],
                      stops: [0.0, 0.15, 0.28, 0.42, 0.57, 0.71, 0.85, 1.0],
                      fallbackIcon: const Icon(Icons.person, size: 50),
                    ),
                    GoogleRainbowCircularAvatar(
                      imageUrl: 'https://i.ibb.co/0TC6Z4w/7957697b-3002-4f79-88ae-15792206fed7.jpg', // replace with your avatar
                      radius: 100,
                      borderWidth: 8,
                      fallbackIcon: Icon(Icons.person, size: 40),
                    ),
                  ]
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );

    // Find fallback icon since imageUrl is empty
  });
}
