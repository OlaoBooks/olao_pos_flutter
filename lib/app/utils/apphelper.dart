import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:olao_pos_flutter/app/components/custom_dailog.dart';
import 'package:olao_pos_flutter/app/utils/constats.dart';

class AppHelper {
  late BuildContext context;
  //AppHelper.of(this.context)

  static showErrorDialog(
    String title,
    String description, {
    bool? showOk,
    VoidCallback? onPressed,
    VoidCallback? yesOnPress,
    String? confirmButtonText,
  }) {
    showDialog(
      context: Get.context!,
      builder: (context) => CustomDialog(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            halfstandardpaddingSizeBox,
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                // fontWeight: FontWeight.w900,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20.0,
          ),
          textAlign: TextAlign.center,
        ),
        firstColor: const Color(0xFFCF3C3C),
        secondColor: Colors.white,
        headerIcon: const Icon(
          Icons.error_outline_rounded,
          size: 120.0,
          color: Colors.white,
        ),
        onPress: () {
          Navigator.pop(context);
        },
        yesOnPress: yesOnPress,
        confirmButtonText: confirmButtonText,
        showOk: showOk,
      ),
    );
  }
}
