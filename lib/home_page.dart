import 'dart:developer';

import 'package:animation_app/drag_controller.dart';
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
    DragController mutable = Provider.of<DragController>(context);
    DragController immutable = Provider.of<DragController>(
      context,
      listen: false,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Draggable(
                  data: 'box',
                  feedback: Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                  childWhenDragging: Container(
                    height: 200,
                    width: 200,
                    color: Colors.grey,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: mutable.boxAccepted ? Colors.grey : Colors.red,
                  ),
                ),
                Draggable(
                  data: 'circle',
                  feedback: Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                  childWhenDragging: Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget(
              onAcceptWithDetails: (details) {
                mutable.boxAccept();
                log("Can accept...");
              },
              onWillAcceptWithDetails: (details) {
                log("DATA: ${details.data}");
                return details.data == 'box';
              },
              builder: (context, _, __) => Container(
                height: 200,
                width: 200,
                color: mutable.boxAccepted ? Colors.red : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
