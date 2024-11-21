import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

Widget netImageCached(
  String url, {
  double width = 48,
  double height = 48,
  double radius = 24,
  EdgeInsetsGeometry? margin,
  Color background = Colors.white,
  String imagePath = '',
  Widget? errImage,
  BoxFit? fit,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.all(Radius.circular(radius))),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        fit: fit ?? BoxFit.cover,
        width: width,
        height: height,
        imageUrl: url,
        errorWidget: (context, url, error) {
          return Center(
            child: errImage ??
                const Icon(
                  Icons.error_outline,
                  color: Colors.grey,
                  size: 28,
                ),
          );
        },
        placeholder: (context, url) {
          return Image(image: MemoryImage(kTransparentImage));
        },
        fadeInDuration: const Duration(milliseconds: 0),
      ),
    ),
  );
}
