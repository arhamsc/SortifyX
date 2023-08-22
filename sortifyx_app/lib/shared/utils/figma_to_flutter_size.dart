import 'package:sizer/sizer.dart';

double getHeight(double figmaHeight) {
  final double componentHeight = (figmaHeight / SizerUtil.height);
  return (componentHeight * 100).ceilToDouble().h;
}

double getWidth(double figmaWidth) {
  final double componentWidth = (figmaWidth / SizerUtil.width);
  return (componentWidth * 100).ceilToDouble().w;
}
