import 'package:flutter/material.dart';

/// Scale Transition
class SlidePageRoute extends PageRouteBuilder {
  final Widget page;
  SlidePageRoute({required this.page})
      : super(
          transitionDuration: const Duration(seconds: 1),
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final tween = Tween(begin: 0.0, end: 1.0);
            return ScaleTransition(
              scale: animation.drive(tween),
              child: child,
            );
          },
        );
}
