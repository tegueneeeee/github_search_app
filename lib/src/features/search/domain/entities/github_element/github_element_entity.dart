import 'package:github_search_app/src/features/search/domain/entities/github_element/github_element_category.dart';

abstract class GithubElementEntity {
  GithubElementEntity({
    required this.nodeId,
    required this.exploreDate,
    required this.category,
  });

  final String nodeId;
  final DateTime exploreDate;
  final GithubElementCategory category;
}
