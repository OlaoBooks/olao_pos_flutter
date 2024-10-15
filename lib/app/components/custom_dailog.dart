import 'package:flutter/material.dart';
import 'package:olao_pos_flutter/app/utils/constats.dart';
import 'package:olao_pos_flutter/internal_library/flutter_screenutil/src/size_extension.dart';

class CustomDialog extends StatelessWidget {
  final Widget content;
  final Text title;
  final Color firstColor;
  final Color secondColor;
  final Icon headerIcon;
  final VoidCallback? onPress;
  final VoidCallback? yesOnPress;
  final bool? showOk;
  final String? confirmButtonText;

  const CustomDialog({
    super.key,
    required this.content,
    required this.title,
    required this.firstColor,
    required this.secondColor,
    required this.headerIcon,
    this.onPress,
    this.yesOnPress,
    this.showOk,
    this.confirmButtonText,
  });
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 8,
      backgroundColor: Colors.transparent,
      child: buildChild(context),
    );
  }

  buildChild(BuildContext context) => Container(
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          color: firstColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 6.0, 6.0, 0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    onPressed: onPress,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: headerIcon,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.all(standardpadding.sp),
                decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    title,
                    content,
                    SizedBox(
                      height: 10.sp,
                    ),
                    if (showOk ?? false) ...{
                      TextButton(
                          onPressed: yesOnPress,
                          child: Text(confirmButtonText ?? "Confirm"))
                    }
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
