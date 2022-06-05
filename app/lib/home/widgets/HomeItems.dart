import 'package:flutter/material.dart';
import 'package:portfolio/widgets/buttons/card_button.dart';

class HomeInfoItems extends StatelessWidget {
  const HomeInfoItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CardButtonWidget(
          icon: Icons.book_online,
          text: 'Projects',
          onTap: () => Navigator.pushNamed(context, '/projects'),
        ),
        CardButtonWidget(
          icon: Icons.work,
          text: 'Jobs',
          onTap: () => Navigator.pushNamed(context, '/jobs'),
        ),
      ],
    );
  }
}
