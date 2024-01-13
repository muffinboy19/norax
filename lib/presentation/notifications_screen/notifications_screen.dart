import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/app_bar/appbar_leading_image.dart';
import 'package:google_solutions/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:google_solutions/widgets/app_bar/custom_app_bar.dart';
import 'package:google_solutions/widgets/custom_elevated_button.dart';
import 'package:google_solutions/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 33.v),
                child: Column(children: [
                  _buildAllowNotification(context),
                  SizedBox(height: 12.v),
                  _buildEmailNotification(context),
                  SizedBox(height: 12.v),
                  _buildOrderNotification(context),
                  SizedBox(height: 12.v),
                  _buildGeneralNotification(context),
                  SizedBox(height: 5.v)
                ])),
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
        title: AppbarSubtitleOne(text: "Notifications"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildAllowNotification(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.v),
              Text("Allow Notifcations",
                  style: CustomTextStyles.titleSmallBlack90001SemiBold),
              SizedBox(height: 2.v),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    width: 232.h,
                    margin: EdgeInsets.only(top: 14.v),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadi\npscing elitr, sed diam nonumym",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelMedium)),
                CustomSwitch(
                    margin: EdgeInsets.only(left: 85.h, bottom: 29.v),
                    value: isSelectedSwitch,
                    onChange: (value) {
                      isSelectedSwitch = value;
                    })
              ])
            ]));
  }

  /// Section Widget
  Widget _buildEmailNotification(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 7.v),
              child: _buildThirtyEight(context,
                  orderNotificationsText: "Email Notifcations",
                  descriptionText:
                      "Lorem ipsum dolor sit amet, consetetur sadi\npscing elitr, sed diam nonumym")),
          CustomSwitch(
              margin: EdgeInsets.only(top: 32.v, bottom: 31.v),
              value: isSelectedSwitch1,
              onChange: (value) {
                isSelectedSwitch1 = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildOrderNotification(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 5.v),
              child: _buildThirtyEight(context,
                  orderNotificationsText: "Order Notifcations",
                  descriptionText:
                      "Lorem ipsum dolor sit amet, consetetur sadi\npscing elitr, sed diam nonumym")),
          CustomSwitch(
              margin: EdgeInsets.only(top: 30.v, bottom: 29.v),
              value: isSelectedSwitch2,
              onChange: (value) {
                isSelectedSwitch2 = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildGeneralNotification(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.v),
              Text("General Notifcations",
                  style: CustomTextStyles.titleSmallBlack90001SemiBold),
              SizedBox(height: 2.v),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    width: 232.h,
                    margin: EdgeInsets.only(top: 14.v),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadi\npscing elitr, sed diam nonumym",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelMedium)),
                CustomSwitch(
                    margin: EdgeInsets.only(left: 85.h, bottom: 29.v),
                    value: isSelectedSwitch3,
                    onChange: (value) {
                      isSelectedSwitch3 = value;
                    })
              ])
            ]));
  }

  /// Section Widget
  Widget _buildSaveSettings(BuildContext context) {
    return CustomElevatedButton(
        height: 60.v,
        text: "Save settings",
        margin: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 35.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientLightGreenToPrimaryDecoration,
        buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
        onPressed: () {
          onTapSaveSettings(context);
        });
  }

  /// Common widget
  Widget _buildThirtyEight(
    BuildContext context, {
    required String orderNotificationsText,
    required String descriptionText,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(orderNotificationsText,
          style: CustomTextStyles.titleSmallBlack90001SemiBold
              .copyWith(color: appTheme.black90001)),
      SizedBox(height: 16.v),
      SizedBox(
          width: 232.h,
          child: Text(descriptionText,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelMedium!
                  .copyWith(color: appTheme.blueGray400)))
    ]);
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
