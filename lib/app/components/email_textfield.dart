import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:olao_pos_flutter/app/modules/login/controllers/login_controller.dart';
import 'package:olao_pos_flutter/app/utils/app_colors.dart';
import 'package:olao_pos_flutter/internal_library/flutter_screenutil/src/size_extension.dart';

// ignore: must_be_immutable
class EmailTextFormField extends StatelessWidget {
  EmailTextFormField({super.key});
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50.sp,
        child: TextFormField(
          controller: controller.emailController,
          autofocus: false,
          validator: (value) {
            if (value!.isEmpty) {
              return ("Please enter your email");
            }
            if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                .hasMatch(value)) {
              return ("Please enter a valid email");
            }
            return null;
          },
          onSaved: (value) {
            controller.emailController.text = value!;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
              size: 18.sp,
              color: AppColors.primaryBlack,
            ),
            contentPadding:
                EdgeInsets.fromLTRB(1.sp, 1.sp, 1.sp, 1.sp), //need to add sp
            hintText: "Enter your email",
            hintStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(color: AppColors.primaryBlack),
            filled: true,
            fillColor: AppColors.primarywhite,
            isDense: true,
            focusedBorder: const OutlineInputBorder(borderSide: BorderSide()),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.sp), //need to add sp
            ),

            //need to add sp
          ),
        ),
      ),
    );
  }
}
