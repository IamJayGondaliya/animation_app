import 'package:flutter/material.dart';

class ImplicitController extends ChangeNotifier {
  bool isFirst = true;

  void setFirst() {
    isFirst = true;
    notifyListeners();
  }

  void setSecond() {
    isFirst = false;
    notifyListeners();
  }
}
