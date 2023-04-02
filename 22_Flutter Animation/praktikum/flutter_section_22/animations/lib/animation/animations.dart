import 'package:flutter/material.dart';

class Animations {
  static fromBottom(Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(end: Offset.zero, begin: const Offset(0.0, 1.0))
          .animate(animation),
      child: child,
    );
  }
}
