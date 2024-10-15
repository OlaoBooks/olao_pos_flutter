import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:olao_pos_flutter/app/modules/login/controllers/login_controller.dart';
import 'package:olao_pos_flutter/app/utils/app_colors.dart';
import 'package:olao_pos_flutter/internal_library/flutter_screenutil/src/size_extension.dart';

// ignore: must_be_immutable
class PasswordTextFormField extends StatelessWidget {
  PasswordTextFormField({super.key});
  var controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Expanded(
          child: SizedBox(
            height: 50.sp,
            child: TextFormField(
                autofocus: false,
                controller: controller.passwordController,
                validator: (value) {
                  RegExp regex = RegExp(r'^.{6,}$');
                  if (value!.isEmpty) {
                    return ("Please enter your password");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter valid password(Min. 6 Character)");
                  }
                  return null;
                },
                onSaved: (value) {
                  controller.passwordController.text = value!;
                },
                textInputAction: TextInputAction.next,
                obscureText: controller.isPasswordVisible.value,
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                      onTap: () {
                        controller.isPasswordVisible.value =
                            !controller.isPasswordVisible.value;
                      },
                      child: Icon(
                        controller.isPasswordVisible.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: AppColors.textGrey,
                      )),
                  prefixIcon: Icon(
                    Icons.password_outlined,
                    color: AppColors.primaryBlack,
                  ),
                  isDense: true,
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: AppColors.primaryBlack),
                  contentPadding: EdgeInsets.fromLTRB(1.sp, 1.sp, 1.sp, 1.sp),
                  hintText: "Enter your password",
                  fillColor: AppColors.primarywhite,
                  filled: true,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.sp), //add sp
                  ),
                )),
          ),
        ));
  }
}
