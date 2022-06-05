import 'package:flutter/material.dart';

class PrimaryCard extends StatelessWidget {
  final Widget child;
  final Function()? onTap;

  const PrimaryCard({
    Key? key,
    required this.child,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.05),
          ),
          child: child,
        ),
      ),
    );
  }
}
