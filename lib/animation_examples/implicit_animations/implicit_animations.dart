import 'dart:math';

import 'package:animation_app/animation_examples/implicit_animations/implicit_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*
    Implicit Animation Widgets
    - TweenAnimationBuilder
      - Transform
    - AnimatedFoo
      - AnimatedContainer
      - AnimatedOpacity
      - Animated..

*/

class ImplicitAnimations extends StatelessWidget {
  const ImplicitAnimations({super.key});

  @override
  Widget build(BuildContext context) {
    ImplicitController mutable = Provider.of<ImplicitController>(context);
    ImplicitController immutable = Provider.of<ImplicitController>(
      context,
      listen: false,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Implicit Animations"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // TweenAnimationBuilder(
              //   tween: Tween(
              //     begin: const Alignment(0, -0.3),
              //     end: const Alignment(0, -0.1),
              //   ),
              //   duration: const Duration(
              //     seconds: 3,
              //   ),
              //   builder: (context, val, _) => Align(
              //     alignment: val,
              //     child: TweenAnimationBuilder(
              //       tween: Tween(
              //         begin: 0.0,
              //         end: 1.0,
              //       ),
              //       duration: const Duration(seconds: 6),
              //       builder: (c, v, w) => Opacity(
              //         opacity: v,
              //         child: const FlutterLogo(
              //           size: 150,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // TweenAnimationBuilder(
              //   tween: Tween(
              //     begin: const Alignment(0, 0),
              //     end: const Alignment(0, 0.2),
              //   ),
              //   duration: const Duration(
              //     seconds: 3,
              //   ),
              //   builder: (context, val, _) => Align(
              //     alignment: val,
              //     child: TweenAnimationBuilder(
              //       tween: Tween(
              //         begin: 0.0,
              //         end: 1.0,
              //       ),
              //       duration: const Duration(seconds: 6),
              //       builder: (c, v, w) => Opacity(
              //         opacity: v,
              //         child: Container(
              //           height: 80,
              //           width: double.infinity,
              //           color: Colors.blue,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              AnimatedContainer(
                duration: const Duration(
                  seconds: 3,
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(
                    mutable.isFirst ? 0 : 100,
                  ),
                ),
              ),
              AnimatedCrossFade(
                firstChild: const FlutterLogo(
                  size: 100,
                ),
                secondChild: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                crossFadeState: mutable.isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(
                  seconds: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      immutable.setFirst();
                    },
                    child: const Text("LOGO"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      immutable.setSecond();
                    },
                    child: const Text("BOX"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
