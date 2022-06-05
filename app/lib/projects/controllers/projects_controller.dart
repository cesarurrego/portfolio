import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final projectProvider = ChangeNotifierProvider((ref) => ProjectNotifier());

class ProjectNotifier extends ChangeNotifier {
  late List<GithubModel> _githubRepositories = [];

  ProjectNotifier() {
    init();
  }

  init() async {
    final projectRepo = ProjectRepository();
    _githubRepositories = await projectRepo.fetch();
    sortRepositories();
  }

  sortRepositories(){
    _githubRepositories.sort((a,b) => b.pushedAt!.compareTo(a.pushedAt!));
  }

  List<GithubModel> get githubRepositories => _githubRepositories;
}
