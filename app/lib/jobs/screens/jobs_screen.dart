import 'package:flutter/material.dart';
import 'package:portfolio/jobs/widgets/jobs_item.dart';
import 'package:portfolio/widgets/scaffold/generic_scaffold.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericScaffold(
      appBarTitle: 'My Jobs',
      body: Column(
        children: [
          JobItem(),
        ],
      ),
    );
  }
}
