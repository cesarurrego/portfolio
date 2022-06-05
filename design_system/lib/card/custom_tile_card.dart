import 'package:design_system/card/primary_card.dart';
import 'package:design_system/text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTileCard extends StatelessWidget {
  final String title;
  final String? user;
  final String? subTitle;
  final IconData? socialIcon;
  final Color? iconColor;
  final String? image;
  final String? description;
  final Function()? onTap;

  const CustomTileCard({
    Key? key,
    required this.title,
    this.user,
    this.subTitle,
    this.socialIcon,
    this.iconColor,
    this.image,
    this.description,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryCard(
      onTap: onTap,
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
                          text: title,
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
                    if (description != null) ...[
                      const SizedBox(height: 8.0),
                      CustomText(
                        text: description ?? '',
                      ),
                    ]
                  ],
                ),
              ),
              const SizedBox(width: 8.0),
              if (image != null)
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    image ?? '',
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
