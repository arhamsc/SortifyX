import 'package:responsive_sizer/responsive_sizer.dart';

double getHeight(double figmaHeight) {
  final double componentHeight = (figmaHeight / Device.height);
  return (componentHeight * 100).ceilToDouble().h;
}

double getWidth(double figmaWidth) {
  final double componentWidth = (figmaWidth / Device.width);
  return (componentWidth * 100).ceilToDouble().w;
}
