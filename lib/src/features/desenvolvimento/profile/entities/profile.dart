class Profile {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String totalPost;
  final String totalFollowers;
  final String totalFollowing;

  Profile({
    required this.imageUrl,
    required this.subtitle,
    required this.title,
    required this.totalFollowers,
    required this.totalFollowing,
    required this.totalPost,
  });
}
