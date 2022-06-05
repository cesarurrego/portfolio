import 'dart:math';

import 'package:flutter/material.dart';
import 'package:design_system/text/custom_text.dart';

class CardButtonWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function()? onTap;

  const CardButtonWidget({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: (MediaQuery.of(context).size.width / 2) - 26.0,
        height: MediaQuery.of(context).size.height * 0.15,
        padding: const EdgeInsets.all(20.0),
        color: _getRandomColor(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30.0),
            const SizedBox(height: 8.0),
            CustomText(
              text: text,
              align: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Color _getRandomColor() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)]
        .withOpacity(0.3);
  }
}
