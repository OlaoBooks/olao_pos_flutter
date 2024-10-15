import 'package:flutter/material.dart';
import 'package:olao_pos_flutter/internal_library/flutter_screenutil/src/size_extension.dart';

const double standardpadding = 16.0;
const double halfstandardpadding = 8.0;
const double maxpadding = 60.0;
List<BoxShadow> shadowList = [
  BoxShadow(
      color: Colors.grey.shade300, blurRadius: 30, offset: const Offset(0, 10))
];
const Curve scrollToAnimation = Curves.easeInCubic;
const Duration scrollToDuration = Duration(seconds: 1);

SizedBox halfstandardpaddingSizeBox = SizedBox(
  height: halfstandardpadding.sp,
);
