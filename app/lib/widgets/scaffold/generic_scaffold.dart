import 'package:flutter/material.dart';
import 'package:design_system/app_bar/custom_appbar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/theme/theme_controller.dart';

class GenericScaffold extends ConsumerWidget {
  final String appBarTitle;
  final Widget body;
  final bool? isBack;
  final Color? backgroundColor;
  final EdgeInsets? padding;

  const GenericScaffold({
    Key? key,
    required this.appBarTitle,
    required this.body,
    this.padding,
    this.isBack,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: CustomScreenAppbar(
        title: appBarTitle,
        isBack: isBack ?? true,
      ),
      backgroundColor: backgroundColor,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
            Switch(
              onChanged: (bool value) {
                final provider = ref.watch(themeProvider);
                ref.read(themeProvider).toggleTheme();
                Navigator.pop(context);
              },
              value: true,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: padding ?? const EdgeInsets.all(16.0),
        child: body,
      ),
    );
  }

  void _changeTheme(BuildContext context) {}
}
