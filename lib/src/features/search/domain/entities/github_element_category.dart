enum GithubElementCategory {
  user(
    'assets/icons/user.svg',
  ),
  repository(
    'assets/icons/repository.svg',
  ),
  issue(
    'assets/icons/issue.svg',
  ),
  pr(
    'assets/icons/pr_open.svg',
  ),
  total(
    'assets/icons/long_arrow_right.svg',
  ),
  ;

  const GithubElementCategory(
    this.path,
  );
  final String path;
}
