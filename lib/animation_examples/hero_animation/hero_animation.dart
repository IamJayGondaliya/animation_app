import 'dart:developer';

import 'package:animation_app/animation_examples/drag_drop_animation/drag_controller.dart';
import 'package:animation_app/animation_examples/hero_animation/page2.dart';
import 'package:animation_app/utils/extras.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeroAnimationPage extends StatelessWidget {
  const HeroAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: const Center(
        child: Hero(
          tag: 'f_logo',
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MyRoute(
              builder: (_) => const Page2(),
            ),
          );
        },
      ),
    );
  }
}
