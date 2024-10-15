import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olao_pos_flutter/app/components/custom_button.dart';
import 'package:olao_pos_flutter/app/components/email_textfield.dart';
import 'package:olao_pos_flutter/app/components/password_textfield.dart';
import 'package:olao_pos_flutter/app/utils/apphelper.dart';
import 'package:olao_pos_flutter/app/utils/asset_images.dart';
import 'package:olao_pos_flutter/app/utils/constats.dart';
import 'package:olao_pos_flutter/internal_library/flutter_screenutil/src/size_extension.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: 1.sw,
          height: 1.sh,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            //   image: AssetImage(
            //     AssetsImage.loginBg,
            //   ),
            // ),
            image: NetworkImage(
                "https://img.freepik.com/free-vector/copy-space-bokeh-spring-lights-background_52683-55649.jpg"),
          )),
          child: Center(
              child: Card(
            elevation: standardpadding.sp,
            child: Stack(
              children: [
                Container(
                  height: 380.sp,
                  width: 450.sp,
                  padding: EdgeInsets.all(40.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign In",
                        style: GoogleFonts.roboto(
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 40.sp,
                      ),
                      EmailTextFormField(),
                      PasswordTextFormField(),
                      SizedBox(
                        height: 30.sp,
                      ),
                      CustomButtonWidget(
                        buttonTitle: "Sign In",
                        height: 50.sp,
                        width: 1.sw,
                        onPress: () async {
                          // if (!kIsWeb) {
                          //   final PrinterService _printerService =
                          //       PrinterService();
                          //   await _printerService.printerConnectedTest();
                          // }

                          checkSignIn();

                          // if (controller.emailController.text
                          //         .contains('@gmail.com') &&
                          //     controller.passwordController.text.length >= 8) {
                          //   controller.authenticationCall(context);
                          // } else {
                          //   AppHelper.showErrorDialog(
                          //       'Error!', 'Please enter valid details!');
                          // }
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 30.sp,
                  top: 30.sp,
                  child: SizedBox(
                    width: 50.sp,
                    height: 50.sp,
                    // child: Image.network(
                    //     "https://assets.indiaonline.in/businessimg/gallery/650/OLAOfeviconJpg_dfb10013-c0c0-4a7c-9c98-ecb6433d6e42.jpg")
                    child: Image.asset(
                      AssetsImage.logo,
                    ),
                  ),
                ),
              ],
            ),
          )),
        )
      ]),
    );
  }

  void checkSignIn() {
    if (controller.emailController.text.isEmpty) {
      AppHelper.showErrorDialog("Error", "Please Enter Email Address");
    } else if (!controller.emailController.text.contains('@gmail.com')) {
      AppHelper.showErrorDialog("Error", "Please Enter Valid Email Address");
    } else if (controller.passwordController.text.isEmpty) {
      AppHelper.showErrorDialog("Error", "Please Enter Password");
    } else {
      if (controller.emailController.text.contains('@gmail.com') &&
          controller.passwordController.text.length >= 8) {
        //  controller.authenticationCall(Get.context!);
      } else {
        AppHelper.showErrorDialog('Error!', 'Please enter valid details!');
      }
    }
  }
}
