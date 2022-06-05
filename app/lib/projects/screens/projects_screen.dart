import 'package:core/core.dart';
import 'package:design_system/card/card_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/projects/controllers/projects_controller.dart';
import 'package:portfolio/widgets/scaffold/generic_scaffold.dart';

class ProjectsScreen extends ConsumerWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(projectProvider);
    return GenericScaffold(
      appBarTitle: 'My Projects',
      padding: EdgeInsets.zero,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: ListView.builder(
          itemCount: provider.githubRepositories.length,
          itemBuilder: (_, index) {
            return CustomTileCard(
              onTap: () {
                UrlUtils.launchInBrowser(provider.githubRepositories[index].htmlUrl ?? '');
              },
              title: provider.githubRepositories[index].name ?? '',
              subTitle: provider.githubRepositories[index].language ?? '',
              image: provider.githubRepositories[index].owner?.avatarUrl ?? '',
              description: provider.githubRepositories[index].description ?? '',
            );
          },
        ),
      ),
    );
  }
}
