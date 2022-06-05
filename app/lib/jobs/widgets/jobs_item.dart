import 'package:flutter/material.dart';
import 'package:design_system/text/custom_text.dart';

class JobItem extends StatelessWidget {
  const JobItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('hola');
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomText(
                    text: 'Sumer',
                    fontWeight: FontWeight.bold,
                    size: 24.0,
                    align: TextAlign.center,
                  ),
                  SizedBox(height: 5.0),
                  CustomText(
                    text: 'Tech Lead Flutter Developer',
                    align: TextAlign.start,
                  ),
                  SizedBox(height: 5.0),
                  CustomText(
                    text: '2021-09-01 - Now',
                    align: TextAlign.start,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                CircleAvatar(
                  child: Image.asset(
                    'assets/icons/sumer_icon.png',
                  ),
                ),
                Row(
                  children: const [
                    JobsItemIcon(
                      icon: Icons.phone,
                    ),
                    JobsItemIcon(
                      icon: Icons.email,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class JobsItemIcon extends StatelessWidget {
  final IconData icon;

  const JobsItemIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Icon(
          icon,
          size: 16.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
