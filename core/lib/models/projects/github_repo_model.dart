import 'dart:convert';

class GithubModel {
  GithubModel({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.owner,
    this.private,
    this.htmlUrl,
    this.description,
    this.url,
    this.downloadsUrl,
    this.homepage,
    this.language,
    this.pushedAt,
    this.updatedAt,
  });

  int? id;
  String? nodeId;
  String? name;
  String? fullName;
  Owner? owner;
  bool? private;
  String? htmlUrl;
  String? description;
  String? url;
  String? downloadsUrl;
  String? homepage;
  dynamic language;
  DateTime? pushedAt;
  DateTime? updatedAt;

  GithubModel copyWith({
    int? id,
    String? nodeId,
    String? name,
    String? fullName,
    Owner? owner,
    bool? private,
    String? htmlUrl,
    String? description,
    String? url,
    String? downloadsUrl,
    String? homepage,
    dynamic language,
    DateTime? pushedAt,
    DateTime? updatedAt,
  }) =>
      GithubModel(
        id: id ?? this.id,
        nodeId: nodeId ?? this.nodeId,
        name: name ?? this.name,
        fullName: fullName ?? this.fullName,
        owner: owner ?? this.owner,
        private: private ?? this.private,
        htmlUrl: htmlUrl ?? this.htmlUrl,
        description: description ?? this.description,
        url: url ?? this.url,
        downloadsUrl: downloadsUrl ?? this.downloadsUrl,
        homepage: homepage ?? this.homepage,
        language: language ?? this.language,
        pushedAt: pushedAt ?? this.pushedAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory GithubModel.fromJson(String str) =>
      GithubModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GithubModel.fromMap(Map<String, dynamic> json) => GithubModel(
        id: json["id"],
        nodeId: json["node_id"],
        name: json["name"],
        fullName: json["full_name"],
        owner: Owner.fromMap(json["owner"]),
        private: json["private"],
        htmlUrl: json["html_url"],
        description: json["description"],
        url: json["url"],
        downloadsUrl: json["downloads_url"],
        homepage: json["homepage"],
        language: json["language"],
        pushedAt: DateTime.parse(json["pushed_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "node_id": nodeId,
        "name": name,
        "full_name": fullName,
        "private": private,
        "html_url": htmlUrl,
        "description": description,
        "url": url,
        "downloads_url": downloadsUrl,
        "homepage": homepage,
        "language": language,
        "pushed_at": pushedAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class Owner {
  Owner({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
  });

  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;

  Owner copyWith({
    String? login,
    int? id,
    String? nodeId,
    String? avatarUrl,
    String? gravatarId,
    String? url,
    String? htmlUrl,
  }) =>
      Owner(
        login: login ?? this.login,
        id: id ?? this.id,
        nodeId: nodeId ?? this.nodeId,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        gravatarId: gravatarId ?? this.gravatarId,
        url: url ?? this.url,
        htmlUrl: htmlUrl ?? this.htmlUrl,
      );

  factory Owner.fromJson(String str) => Owner.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Owner.fromMap(Map<String, dynamic> json) => Owner(
        login: json["login"],
        id: json["id"],
        nodeId: json["node_id"],
        avatarUrl: json["avatar_url"],
        gravatarId: json["gravatar_id"],
        url: json["url"],
        htmlUrl: json["html_url"],
      );

  Map<String, dynamic> toMap() => {
        "login": login,
        "id": id,
        "node_id": nodeId,
        "avatar_url": avatarUrl,
        "gravatar_id": gravatarId,
        "url": url,
        "html_url": htmlUrl,
      };
}
