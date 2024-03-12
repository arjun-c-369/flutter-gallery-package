import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class AppCachedNetworkImage extends StatelessWidget {
  final Widget? loadingWidget;
  final Widget? errorWidget;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final double radius;
  final String imageUrl;

  const AppCachedNetworkImage({
    super.key,
    required this.imageUrl,
    required this.radius,
    this.loadingWidget,
    this.errorWidget,
    this.fit,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: Container(
        child: PhotoView(
          imageProvider: CachedNetworkImageProvider(
            imageUrl,
            maxHeight: height,
            maxWidth: width,
          ),
        )
        /*
        child: CachedNetworkImage(
          height: height,
          width: width,
          fit: fit,
          imageUrl: imageUrl,
          placeholder: (context, url) =>
          loadingWidget ?? const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) =>
          errorWidget ?? const Icon(Icons.error),
        ),
        */
      )
    );
  }
}
