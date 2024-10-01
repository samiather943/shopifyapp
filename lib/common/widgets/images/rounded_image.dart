
import 'package:flutter/material.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImagwRadius=true,
    this.border,
    this.backgroudColor=TColors.light,
    this.fit =BoxFit.contain,
    this.padding,
    this.isNetworkImage=false,
    this.onPressed,
    this.borderRadius=TSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImagwRadius;
  final BoxBorder? border;
  final Color backgroudColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroudColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
            borderRadius: applyImagwRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}
