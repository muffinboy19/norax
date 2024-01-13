import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/custom_elevated_button.dart';
import 'package:google_solutions/widgets/custom_icon_button.dart';
import 'package:google_solutions/widgets/custom_outlined_button.dart';
import 'package:google_solutions/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 28.h, vertical: 47.v),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 70.v),
                                                child: CustomIconButton(
                                                    height: 55.adaptSize,
                                                    width: 55.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(17.h),
                                                    onTap: () {
                                                      onTapBtnArrowDown(
                                                          context);
                                                    },
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgArrowDown))),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgTransparan1,
                                                height: 102.v,
                                                width: 75.h,
                                                margin: EdgeInsets.only(
                                                    left: 104.h, top: 23.v))
                                          ])),
                                  SizedBox(height: 12.v),
                                  Text("Welcome Back",
                                      style: theme.textTheme.headlineLarge),
                                  SizedBox(height: 33.v),
                                  _buildLoginWithFacebookButton(context),
                                  SizedBox(height: 20.v),
                                  _buildLoginWithGoogleButton(context),
                                  SizedBox(height: 38.v),
                                  Text("or LOGIN WITH EMAIL",
                                      style: CustomTextStyles
                                          .bodyMediumInterBluegray30001),
                                  SizedBox(height: 38.v),
                                  _buildEmailEditText(context),
                                  SizedBox(height: 20.v),
                                  _buildPasswordEditText(context),
                                  SizedBox(height: 30.v),
                                  _buildSignInButton(context),
                                  SizedBox(height: 19.v),
                                  Text("Forgot your password?",
                                      style: CustomTextStyles
                                          .bodySmallMontserratBluegray30001),
                                  SizedBox(height: 63.v),
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "You don't have an account yet? ",
                                            style: CustomTextStyles
                                                .bodySmallMontserratffa1a4b2),
                                        TextSpan(
                                            text: "Sign up",
                                            style: CustomTextStyles
                                                .bodySmallMontserratff2dcc70)
                                      ]),
                                      textAlign: TextAlign.left),
                                  SizedBox(height: 3.v)
                                ])))))));
  }

  /// Section Widget
  Widget _buildLoginWithFacebookButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Login with FACEBOOK",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 25.v,
                width: 12.h)),
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.bodyMediumMontserratGray10001);
  }

  /// Section Widget
  Widget _buildLoginWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "Login with GOOGLE",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle, height: 25.v, width: 24.h)),
        buttonStyle: CustomButtonStyles.outlineOnPrimary,
        buttonTextStyle: CustomTextStyles.bodyMediumMontserratOnPrimary);
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
        controller: emailEditTextController,
        hintText: "Email address",
        textInputType: TextInputType.emailAddress,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray10006);
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
        controller: passwordEditTextController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v),
        borderDecoration: TextFormFieldStyleHelper.fillGrayTL15,
        fillColor: appTheme.gray10005);
  }

  /// Section Widget
  Widget _buildSignInButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign In",
        buttonStyle: CustomButtonStyles.fillGreenATL31,
        buttonTextStyle: CustomTextStyles.titleLargeInterGray10001);
  }

  /// Navigates to the signUpAndSignInScreen when the action is triggered.
  onTapBtnArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpAndSignInScreen);
  }
}
