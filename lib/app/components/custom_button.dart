import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olao_pos_flutter/internal_library/flutter_screenutil/src/size_extension.dart';
import '../utils/app_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;

  final Color? textColor;
  final double? buttonRadious;
  final String? buttonTitle;

  final VoidCallback? onPress;
  const CustomButtonWidget({
    super.key,
    this.width,
    this.height,
    this.color,
    this.buttonRadious,
    this.buttonTitle,
    this.onPress,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 40.sp,
      width: width,
      child: ElevatedButton(
        autofocus: false,
        style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
            backgroundColor:
                WidgetStateProperty.all<Color>(color ?? AppColors.saffronColor),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.red)))),
        onPressed: onPress,
        child: Text(buttonTitle ?? "",
            style: GoogleFonts.poppins(
              fontSize: 15.sp,
              color: textColor,
              fontWeight: FontWeight.w500,
            )),
      ),
    );
  }
}
