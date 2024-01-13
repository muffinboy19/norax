import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/app_bar/appbar_leading_image.dart';
import 'package:google_solutions/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:google_solutions/widgets/app_bar/custom_app_bar.dart';
import 'package:google_solutions/widgets/custom_elevated_button.dart';
import 'package:google_solutions/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AboutMeScreen extends StatelessWidget {
  AboutMeScreen({Key? key}) : super(key: key);

  TextEditingController personalDetailsController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController valueController = TextEditingController();

  TextEditingController changePasswordController = TextEditingController();

  TextEditingController eightController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
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
                                horizontal: 16.h, vertical: 33.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Personal Details",
                                      style: CustomTextStyles
                                          .titleMediumPoppinsBlack90001SemiBold18),
                                  SizedBox(height: 21.v),
                                  _buildPersonalDetails(context),
                                  SizedBox(height: 5.v),
                                  _buildEmail(context),
                                  SizedBox(height: 5.v),
                                  _buildValue(context),
                                  SizedBox(height: 38.v),
                                  Text("Change Password",
                                      style: CustomTextStyles
                                          .titleMediumPoppinsBlack90001SemiBold18),
                                  SizedBox(height: 32.v),
                                  _buildChangePassword(context),
                                  SizedBox(height: 5.v),
                                  _buildEight(context),
                                  SizedBox(height: 5.v),
                                  _buildConfirmPassword(context),
                                  SizedBox(height: 5.v)
                                ]))))),
            bottomNavigationBar: _buildSaveSettings(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDownBlack90001,
            margin: EdgeInsets.only(left: 25.h, top: 34.v, bottom: 34.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "About me"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPersonalDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: CustomTextFormField(
            controller: personalDetailsController,
            hintText: "Puan Mihirini",
            hintStyle: theme.textTheme.titleSmall!,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(10.h, 18.v, 26.h, 18.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgLock,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 62.v)));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Puan@dpr.ri",
            hintStyle: theme.textTheme.titleSmall!,
            textInputType: TextInputType.emailAddress,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(11.h, 22.v, 26.h, 21.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgGroup,
                    height: 18.v,
                    width: 23.h)),
            prefixConstraints: BoxConstraints(maxHeight: 62.v)));
  }

  /// Section Widget
  Widget _buildValue(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: CustomTextFormField(
            controller: valueController,
            hintText: "+62  202  555  0142 ",
            hintStyle: theme.textTheme.titleSmall!,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(18.h, 19.v, 21.h, 20.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgTelephone1,
                    height: 23.adaptSize,
                    width: 23.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 62.v)));
  }

  /// Section Widget
  Widget _buildChangePassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: changePasswordController,
            hintText: "Current password",
            hintStyle: theme.textTheme.titleSmall!,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(17.h, 18.v, 30.h, 19.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgLocation,
                    height: 23.v,
                    width: 17.h)),
            prefixConstraints: BoxConstraints(maxHeight: 62.v),
            obscureText: true));
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: eightController,
            prefix: Container(
                margin: EdgeInsets.symmetric(horizontal: 17.h, vertical: 18.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgGroup5BlueGray400,
                    height: 23.v,
                    width: 17.h)),
            prefixConstraints: BoxConstraints(maxHeight: 62.v),
            suffix: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgGroup7,
                    height: 17.v,
                    width: 27.h)),
            suffixConstraints: BoxConstraints(maxHeight: 62.v),
            obscureText: true));
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: confirmPasswordController,
            hintText: "Confirm password",
            hintStyle: theme.textTheme.titleSmall!,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(17.h, 18.v, 30.h, 19.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgLocation,
                    height: 23.v,
                    width: 17.h)),
            prefixConstraints: BoxConstraints(maxHeight: 62.v),
            obscureText: true));
  }

  /// Section Widget
  Widget _buildSaveSettings(BuildContext context) {
    return CustomElevatedButton(
        height: 60.v,
        text: "Save settings",
        margin: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 32.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientLightGreenToPrimaryDecoration,
        buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
        onPressed: () {
          onTapSaveSettings(context);
        });
  }

  /// Navigates to the accountContainerScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountContainerScreen);
  }

  /// Navigates to the accountContainerScreen when the action is triggered.
  onTapSaveSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountContainerScreen);
  }
}
