import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Hero(
              tag: 'f_logo',
              child: FlutterLogo(
                size: 250,
              ),
            ),
            Text(
              lorem(
                words: 500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
