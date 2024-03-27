import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:github_search_app/src/presentation/widgets/error_indicator.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    required this.imageUrl,
    required this.size,
  });

  final String imageUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        memCacheHeight: (44 * MediaQuery.of(context).devicePixelRatio).round(),
        height: size,
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            const CircularProgressIndicator.adaptive(),
        errorWidget: (context, url, error) => const ErrorIndicator(),
      ),
    );
  }
}
