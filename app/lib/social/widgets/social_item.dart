import 'package:design_system/card/primary_card.dart';
import 'package:flutter/material.dart';
import 'package:design_system/text/custom_text.dart';

class SocialItem extends StatelessWidget {
  final String userName;
  final String? user;
  final String? subTitle;
  final IconData? socialIcon;
  final Color? iconColor;

  const SocialItem({
    Key? key,
    required this.userName,
    this.user,
    this.subTitle,
    this.socialIcon,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryCard(
      child: Stack(
        children: [
          if (socialIcon != null)
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Icon(
                socialIcon,
                color: iconColor ?? Colors.black.withOpacity(0.7),
                size: 80.0,
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          text: userName,
                          fontWeight: FontWeight.bold,
                        ),
                        if (user != null)
                          CustomText(
                            text: user ?? '',
                          ),
                      ],
                    ),
                    if (subTitle != null)
                      CustomText(
                        text: subTitle ?? '',
                        size: 11.0,
                      ),
                    const SizedBox(height: 8.0),
                    const CustomText(
                      text:
                          'Están aprobando reformas tributarias en Colombia y el pueblo no se está enterando de nada.',
                    ),
                  ],
                ),
              ),
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1152296763304415232/NOJKoPM5_400x400.jpg',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
