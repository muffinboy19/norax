import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/custom_elevated_button.dart';
import 'package:google_solutions/widgets/custom_outlined_button.dart';

class SignUpAndSignInScreen extends StatelessWidget {
  const SignUpAndSignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 55.h, vertical: 42.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgGroup1),
                              fit: BoxFit.cover)),
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgTransparan1,
                            height: 266.v,
                            width: 208.h),
                        SizedBox(height: 12.v),
                        Text("RUNTAHPEDIA",
                            style: CustomTextStyles
                                .displayMediumOnPrimaryContainer),
                        SizedBox(height: 88.v)
                      ])),
                  SizedBox(height: 25.v),
                  Text("Selamat Datang", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 16.v),
                  SizedBox(
                      width: 220.h,
                      child: Text("Peduli pengolahan sampah\nPeduli masa depan",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeMontserratGreen300
                              .copyWith(height: 1.65))),
                  SizedBox(height: 39.v),
                  CustomElevatedButton(
                      text: "Sign In",
                      margin: EdgeInsets.symmetric(horizontal: 28.h),
                      buttonStyle: CustomButtonStyles.fillGreenATL31,
                      buttonTextStyle:
                          CustomTextStyles.titleLargeInterGray10001Medium,
                      onPressed: () {
                        onTapSignIn(context);
                      }),
                  SizedBox(height: 16.v),
                  CustomOutlinedButton(
                      text: "Sign Up",
                      margin: EdgeInsets.symmetric(horizontal: 28.h),
                      buttonStyle: CustomButtonStyles.outlineGreenA,
                      buttonTextStyle: CustomTextStyles.titleLargeInter,
                      onPressed: () {
                        onTapSignUp(context);
                      }),
                  SizedBox(height: 24.v),
                  SizedBox(
                      height: 25.v,
                      width: 245.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                width: 245.h,
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              "By logging in or registering, you agree to our\n",
                                          style: CustomTextStyles
                                              .bodySmallMontserratff80d48f),
                                      TextSpan(
                                          text: "Terms of Service",
                                          style: CustomTextStyles
                                              .labelMediumMontserratff2dcc70),
                                      TextSpan(
                                          text: " and ",
                                          style: CustomTextStyles
                                              .bodySmallMontserratff80d48f),
                                      TextSpan(
                                          text: "Privacy Policy",
                                          style: CustomTextStyles
                                              .labelMediumMontserratff2dcc70)
                                    ]),
                                    textAlign: TextAlign.center))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(21.h, 10.v, 21.h, 1.v),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Terms of Service",
                                          style: CustomTextStyles
                                              .labelMediumMontserratGreenA400),
                                      Text("Privacy Policy",
                                          style: CustomTextStyles
                                              .labelMediumMontserratGreenA400)
                                    ])))
                      ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
