import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomBackground extends StatelessWidget {
  final Widget child;

  const CustomBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              // borderRadius: const BorderRadius.only(
              //   topRight: Radius.circular(50),
              //   topLeft: const Radius.circular(50),
              // ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.pink.withOpacity(0.5),
                  Colors.purpleAccent.withOpacity(0.5),
                ],
                stops: const [
                  0.3,
                  1.0,
                ],
              ),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
