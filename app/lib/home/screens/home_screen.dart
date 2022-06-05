import 'package:design_system/text/custom_text.dart';
import 'package:design_system/theme/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:portfolio/home/widgets/HomeItems.dart';
import 'package:portfolio/social/widgets/social_item.dart';
import 'package:portfolio/widgets/scaffold/generic_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericScaffold(
      appBarTitle: 'Cesar Urrego',
      isBack: false,
      padding: EdgeInsets.zero,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const HomeInfoItems(),
          const SizedBox(height: 10.0),
          Column(
            children: [
              const CustomText(
                text: 'Social',
                fontWeight: FontWeight.bold,
                size: 18.0,
              ),
              SocialItem(
                userName: 'Cesar Urrego ',
                user: '@caurregoz',
                socialIcon: PhosphorIcons.twitterLogoFill,
                iconColor: Colors.blue.withOpacity(0.7),
              ),
              SocialItem(
                userName: 'Cesar Augusto Urrego Zapata',
                subTitle: 'Flutter Developer at Sumer',
                socialIcon: PhosphorIcons.linkedinLogoFill,
                iconColor: Colors.blue.withOpacity(0.7),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
