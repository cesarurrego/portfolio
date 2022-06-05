import 'dart:convert';
import 'dart:io';

import 'package:core/http/http_service.dart';
import 'package:core/models/projects/github_repo_model.dart';
import 'package:http/http.dart';

class ProjectRepository {

  final githubApiHost = 'https://api.github.com';

  Future<List<GithubModel>> fetch() async {
    final httpService = HttpService();
    Response response = await httpService.request(apiHost: githubApiHost,
      url: '/users/curregoz/repos',
      method: Method.GET,);
    List<GithubModel> currentRepositories = [];
    if (response.statusCode == HttpStatus.ok){
      final githubRepos = jsonDecode(utf8.decode(response.bodyBytes));
      for(var repo in githubRepos){
        currentRepositories.add(GithubModel.fromMap(repo));
      }
      return currentRepositories;
    }
    return jsonDecode(utf8.decode(response.bodyBytes));
  }

}