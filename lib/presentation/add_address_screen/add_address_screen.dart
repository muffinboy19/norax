import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/app_bar/appbar_leading_image.dart';
import 'package:google_solutions/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:google_solutions/widgets/app_bar/custom_app_bar.dart';
import 'package:google_solutions/widgets/custom_drop_down.dart';
import 'package:google_solutions/widgets/custom_elevated_button.dart';
import 'package:google_solutions/widgets/custom_switch.dart';
import 'package:google_solutions/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddAddressScreen extends StatelessWidget {
  AddAddressScreen({Key? key}) : super(key: key);

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController phoneNumberEditTextController = TextEditingController();

  TextEditingController addressEditTextController = TextEditingController();

  TextEditingController zipcodeEditTextController = TextEditingController();

  TextEditingController cityEditTextController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  bool isSelectedSwitch = false;

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
                                horizontal: 24.h, vertical: 42.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildNameEditText(context),
                                  SizedBox(height: 5.v),
                                  _buildEmailEditText(context),
                                  SizedBox(height: 5.v),
                                  _buildPhoneNumberEditText(context),
                                  SizedBox(height: 5.v),
                                  _buildAddressEditText(context),
                                  SizedBox(height: 5.v),
                                  _buildZipcodeEditText(context),
                                  SizedBox(height: 5.v),
                                  _buildCityEditText(context),
                                  SizedBox(height: 5.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: CustomDropDown(
                                          icon: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 25.v, 23.h, 25.v),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowdownGray400,
                                                  height: 11.v,
                                                  width: 14.h)),
                                          hintText: "Country",
                                          items: dropdownItemList,
                                          prefix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  15.h, 18.v, 25.h, 18.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGlobe,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize)),
                                          prefixConstraints:
                                              BoxConstraints(maxHeight: 62.v),
                                          onChanged: (value) {})),
                                  SizedBox(height: 19.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 17.h),
                                      child: Row(children: [
                                        CustomSwitch(
                                            margin: EdgeInsets.only(top: 1.v),
                                            value: isSelectedSwitch,
                                            onChange: (value) {
                                              isSelectedSwitch = value;
                                            }),
                                        Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("Save this address",
                                                style: CustomTextStyles
                                                    .labelLargeMedium))
                                      ])),
                                  SizedBox(height: 5.v)
                                ]))))),
            bottomNavigationBar: _buildAddAddressButton(context)));
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
        title: AppbarSubtitleOne(text: "Add Address"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: nameEditTextController,
            hintText: "Name",
            hintStyle: theme.textTheme.titleSmall!,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(14.h, 18.v, 26.h, 18.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgLock,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 62.v)));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: emailEditTextController,
            hintText: "Email address",
            hintStyle: theme.textTheme.titleSmall!,
            textInputType: TextInputType.emailAddress,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(15.h, 22.v, 26.h, 21.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgGroup,
                    height: 18.v,
                    width: 23.h)),
            prefixConstraints: BoxConstraints(maxHeight: 62.v)));
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: phoneNumberEditTextController,
            hintText: "Phone number",
            hintStyle: theme.textTheme.titleSmall!,
            textInputType: TextInputType.phone,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(18.h, 18.v, 21.h, 20.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgTelephone1,
                    height: 23.adaptSize,
                    width: 23.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 62.v)));
  }

  /// Section Widget
  Widget _buildAddressEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: addressEditTextController,
            hintText: "Address",
            hintStyle: theme.textTheme.titleSmall!,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(17.h, 17.v, 27.h, 17.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgHome,
                    height: 27.v,
                    width: 21.h)),
            prefixConstraints: BoxConstraints(maxHeight: 62.v)));
  }

  /// Section Widget
  Widget _buildZipcodeEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: zipcodeEditTextController,
            hintText: "Zip code",
            hintStyle: theme.textTheme.titleSmall!,
            textInputType: TextInputType.number,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(15.h, 21.v, 24.h, 21.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgTelevision,
                    height: 18.v,
                    width: 26.h)),
            prefixConstraints: BoxConstraints(maxHeight: 62.v)));
  }

  /// Section Widget
  Widget _buildCityEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: cityEditTextController,
            hintText: "City",
            hintStyle: theme.textTheme.titleSmall!,
            textInputAction: TextInputAction.done,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(15.h, 18.v, 25.h, 18.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgMail,
                    height: 25.adaptSize,
                    width: 25.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 62.v)));
  }

  /// Section Widget
  Widget _buildAddAddressButton(BuildContext context) {
    return CustomElevatedButton(
        height: 60.v,
        text: "Add address",
        margin: EdgeInsets.only(left: 26.h, right: 24.h, bottom: 34.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientLightGreenToPrimaryDecoration,
        buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
        onPressed: () {
          onTapAddAddressButton(context);
        });
  }

  /// Navigates to the accountContainerScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountContainerScreen);
  }

  /// Navigates to the accountContainerScreen when the action is triggered.
  onTapAddAddressButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountContainerScreen);
  }
}
