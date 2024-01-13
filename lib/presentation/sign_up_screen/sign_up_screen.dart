import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/custom_checkbox_button.dart';
import 'package:google_solutions/widgets/custom_elevated_button.dart';
import 'package:google_solutions/widgets/custom_icon_button.dart';
import 'package:google_solutions/widgets/custom_outlined_button.dart';
import 'package:google_solutions/widgets/custom_text_form_field.dart';
import 'package:google_solutions/presentation/sign_up_success_dialog/sign_up_success_dialog.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  bool ihavereadtheprivacypolicy = false;

  bool privacyPolicy = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 16.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: 86.v,
                                            width: 63.h,
                                            margin:
                                                EdgeInsets.only(bottom: 70.v),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  CustomIconButton(
                                                      height: 55.adaptSize,
                                                      width: 55.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(15.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .outlineGray,
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgArrowDownGray10002)),
                                                  CustomIconButton(
                                                      height: 55.adaptSize,
                                                      width: 55.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(17.h),
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      onTap: () {
                                                        onTapBtnArrowDown(
                                                            context);
                                                      },
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgArrowDown))
                                                ])),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgTransparan1,
                                            height: 102.v,
                                            width: 75.h,
                                            margin: EdgeInsets.only(
                                                left: 102.h, top: 54.v))
                                      ])),
                              SizedBox(height: 12.v),
                              Text("Create Your Account",
                                  style: theme.textTheme.headlineLarge),
                              SizedBox(height: 34.v),
                              _buildSignUpWithFacebook(context),
                              SizedBox(height: 20.v),
                              _buildSignUpGoogle(context),
                              SizedBox(height: 39.v),
                              Text("or SIGN UP WITH EMAIL",
                                  style: CustomTextStyles
                                      .bodyMediumMontserratBluegray30001),
                              SizedBox(height: 36.v),
                              _buildName(context),
                              SizedBox(height: 20.v),
                              _buildEmail(context),
                              SizedBox(height: 20.v),
                              _buildEditText1(context),
                              SizedBox(height: 20.v),
                              _buildIHaveReadThePrivacyPolicy(context),
                              SizedBox(height: 5.v)
                            ]))))),
            bottomNavigationBar: _buildSignUp(context)));
  }

  /// Section Widget
  Widget _buildSignUpWithFacebook(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign up with FACEBOOK",
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 25.v,
                width: 12.h)),
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.bodyMediumInterGray10001);
  }

  /// Section Widget
  Widget _buildSignUpGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign Up GOOGLE",
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle, height: 25.v, width: 24.h)),
        buttonStyle: CustomButtonStyles.outlineOnPrimary,
        buttonTextStyle: CustomTextStyles.bodyMediumInterOnPrimary);
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: CustomTextFormField(
            controller: nameController,
            hintText: "Puan Mihirini",
            suffix: Padding(
                padding:
                    EdgeInsets.fromLTRB(30.h, 26.920044.v, 21.h, 26.929932.v),
                child: Row(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imageNotFound,
                      height: 9.15.v,
                      width: 14.13.h),
                  CustomImageView(
                      imagePath: ImageConstant.imageNotFound,
                      height: 9.15.v,
                      width: 14.13.h)
                ])),
            suffixConstraints: BoxConstraints(maxHeight: 63.v),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 19.h, vertical: 21.v),
            borderDecoration: TextFormFieldStyleHelper.fillGray,
            fillColor: appTheme.gray10006));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Puanm@gmail.com",
            textInputType: TextInputType.emailAddress,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 19.h, vertical: 21.v),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL15,
            fillColor: appTheme.gray10005));
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return CustomTextFormField(
        width: 374.h,
        controller: editTextController,
        textInputAction: TextInputAction.done,
        alignment: Alignment.center,
        obscureText: true,
        borderDecoration: TextFormFieldStyleHelper.fillGrayTL15,
        fillColor: appTheme.gray10005);
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return SizedBox(
        height: 63.v,
        width: 374.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          _buildEditText(context),
          CustomImageView(
              imagePath: ImageConstant.imgAirplane,
              height: 9.v,
              width: 21.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 6.h, bottom: 1.v))
        ]));
  }

  /// Section Widget
  Widget _buildIHaveReadThePrivacyPolicy(BuildContext context) {
    return SizedBox(
        height: 24.v,
        width: 353.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.center,
              child: CustomCheckboxButton(
                  alignment: Alignment.center,
                  text: "I have read the privacy policy.",
                  value: ihavereadtheprivacypolicy,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    ihavereadtheprivacypolicy = value;
                  })),
          Align(
              alignment: Alignment.centerRight,
              child: CustomCheckboxButton(
                  alignment: Alignment.centerRight,
                  width: 234.h,
                  text: "privacy policy. ",
                  value: privacyPolicy,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  textStyle: CustomTextStyles.bodyMediumMontserratGreenA400,
                  isRightCheck: true,
                  onChange: (value) {
                    privacyPolicy = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up",
        margin: EdgeInsets.only(left: 28.h, right: 27.h, bottom: 36.v),
        buttonStyle: CustomButtonStyles.fillGreenATL31,
        buttonTextStyle: CustomTextStyles.titleLargeGray10002,
        onPressed: () {
          onTapSignUp(context);
        });
  }

  /// Navigates to the signUpAndSignInScreen when the action is triggered.
  onTapBtnArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpAndSignInScreen);
  }

  /// Displays a dialog with the [SignUpSuccessDialog] content.
  onTapSignUp(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: SignUpSuccessDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
