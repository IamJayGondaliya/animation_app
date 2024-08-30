import 'package:animation_app/animation_examples/drag_drop_animation/drag_controller.dart';
import 'package:animation_app/animation_examples/drag_drop_animation/drag_drop_animation.dart';
import 'package:animation_app/animation_examples/hero_animation/hero_animation.dart';
import 'package:animation_app/animation_examples/hero_animation/page2.dart';
import 'package:animation_app/animation_examples/implicit_animations/implicit_animations.dart';
import 'package:animation_app/animation_examples/implicit_animations/implicit_controller.dart';
import 'package:animation_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*

    - Drag & Drop animation
    - Hero animation
    - Implicit animation
    - Explicit animation
    - Staggered animation
    - Tween chaining animation
    - lottie animation
    - rive animation

*/

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DragController()),
        ChangeNotifierProvider(create: (_) => ImplicitController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'drag_drop': (context) => const DragDropAnimation(),
        'hero_animation': (context) => const HeroAnimationPage(),
        'page2': (context) => const Page2(),
        'implicit_animations': (context) => const ImplicitAnimations(),
      },
    );
  }
}
