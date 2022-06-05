import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:design_system/theme/custom_theme.dart';
import 'package:portfolio/home/screens/home_screen.dart';
import 'package:portfolio/jobs/screens/jobs_screen.dart';
import 'package:portfolio/projects/screens/projects_screen.dart';
import 'package:portfolio/theme/theme_controller.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: themeMode.currentTheme,
      initialRoute: '/',
      routes: {
        '/': (_) => const HomeScreen(),
        '/projects': (_) => const ProjectsScreen(),
        '/jobs': (_) => const JobsScreen(),
      },
    );
  }
}
