import 'dart:developer';

import 'package:animation_app/animation_examples/drag_drop_animation/drag_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*
  - Draggable
  - LongPressDraggable
  - DragTarget
*/
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'drag_drop',
                );
              },
              child: const Text("Drag & Drop Animation"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'hero_animation',
                );
              },
              child: const Text("Hero Animation"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'implicit_animations',
                );
              },
              child: const Text("Implicit Animation"),
            ),
          ],
        ),
      ),
    );
  }
}
