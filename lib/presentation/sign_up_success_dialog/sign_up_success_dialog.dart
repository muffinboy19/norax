import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/custom_outlined_button.dart';

class SignUpSuccessDialog extends StatelessWidget {
  const SignUpSuccessDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 279.h,
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 25.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder29),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 8.v),
          Text("Sign Up Success", style: theme.textTheme.titleLarge),
          SizedBox(height: 30.v),
          Container(
              height: 122.adaptSize,
              width: 122.adaptSize,
              padding: EdgeInsets.all(28.h),
              decoration: AppDecoration.fillGreenA
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder61),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkLightGreen100,
                  height: 54.v,
                  width: 63.h,
                  alignment: Alignment.bottomLeft)),
          SizedBox(height: 37.v),
          CustomOutlinedButton(
              height: 55.v,
              width: 218.h,
              text: "Sign In",
              buttonStyle: CustomButtonStyles.outlineGreen,
              buttonTextStyle: CustomTextStyles.titleLargeGreen30001,
              onPressed: () {
                onTapSignIn(context);
              })
        ]));
  }

  /// Navigates to the signUpAndSignInScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpAndSignInScreen);
  }
}
