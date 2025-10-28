import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final double radius;
  const CustomNetworkImage({super.key, required this.imageUrl, required this.width, required this.height, required this.radius});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: width.w,
      height: height.h,
  imageUrl:imageUrl,
  imageBuilder: (context, imageProvider) => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      image: DecorationImage(
        
          image: imageProvider,
          fit: BoxFit.cover,
          ),
    ),
  ),
  placeholder: (context, url) => CircularProgressIndicator(),
  errorWidget: (context, url, error) => Icon(Icons.error),
)
;
  }
}