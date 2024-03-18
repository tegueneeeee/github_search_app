enum GithubElementCategory {
  user(
    'user',
  ),
  repository(
    'repository',
  ),
  issue(
    'issue',
  ),
  pr(
    'pr',
  ),
  total(
    'total',
  ),
  ;

  const GithubElementCategory(
    this.tag,
  );
  final String tag;
}
