import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetImageContainer extends StatelessWidget {
  const AssetImageContainer({
    super.key,
    this.isSvg = false,
    required this.assetPath,
    this.width,
    this.height,
  });

  final bool isSvg;
  final String assetPath;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: isSvg
          ? SvgPicture.asset(
              assetPath,
              fit: BoxFit.cover,
            )
          : Image.asset(
              assetPath,
              fit: BoxFit.cover,
            ),
    );
  }
}
