import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/custom_outlined_button.dart';

class SignOutDialog extends StatelessWidget {
  const SignOutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 279.h,
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 25.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder29),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 8.v),
          Text("Sign Out Success", style: theme.textTheme.titleLarge),
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
              text: "Back",
              buttonStyle: CustomButtonStyles.outlineGreenATL11,
              buttonTextStyle: theme.textTheme.titleLarge!,
              onPressed: () {
                onTapBack(context);
              })
        ]));
  }

  /// Navigates to the signUpAndSignInScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpAndSignInScreen);
  }
}
