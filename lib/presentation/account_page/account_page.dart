import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/custom_icon_button.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10006,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      _buildProfileSection(context),
                      SizedBox(height: 2.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Puan Mihirini",
                              style: CustomTextStyles.titleSmallBlack90001)),
                      SizedBox(height: 2.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Puan@dpr.ri",
                              style: CustomTextStyles.bodySmallBluegray400)),
                      SizedBox(height: 8.v),
                      Align(
                          alignment: Alignment.center,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgContrast,
                                    height: 28.adaptSize,
                                    width: 28.adaptSize,
                                    margin: EdgeInsets.only(top: 1.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text("0 Runtah Points",
                                        style:
                                            CustomTextStyles.titleLargePoppins))
                              ])),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 40.h),
                          child: Text("Semua Kategori",
                              style: CustomTextStyles.labelLargeBluegray400)),
                      SizedBox(height: 15.v),
                      _buildNavigationSection(context),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 40.h),
                          child: Text("Other",
                              style: CustomTextStyles.labelLargeBluegray400)),
                      SizedBox(height: 7.v),
                      _buildSettingsSection(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildProfileSection(BuildContext context) {
    return SizedBox(
        height: 174.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 117.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimaryContainer))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 117.v,
                  width: 114.h,
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgAndriykoPodiln,
                        height: 114.adaptSize,
                        width: 114.adaptSize,
                        radius: BorderRadius.circular(57.h),
                        alignment: Alignment.center),
                    Padding(
                        padding: EdgeInsets.only(right: 12.h),
                        child: CustomIconButton(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            decoration: IconButtonStyleHelper.fillGreen,
                            alignment: Alignment.bottomRight,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgCamera)))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildNavigationSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 17.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(children: [
          SizedBox(height: 14.v),
          GestureDetector(
              onTap: () {
                onTapAboutMe(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 98.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgSettings,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize),
                                  Text("About me",
                                      style: theme.textTheme.labelLarge)
                                ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowRightBlueGray400,
                            height: 18.v,
                            width: 10.h)
                      ]))),
          SizedBox(height: 22.v),
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 94.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgThumbsUp,
                                  height: 19.adaptSize,
                                  width: 19.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v)),
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text("My Order",
                                      style: theme.textTheme.labelLarge))
                            ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRightBlueGray400,
                        height: 18.v,
                        width: 10.h)
                  ])),
          SizedBox(height: 25.v),
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgFavorite,
                          height: 16.v,
                          width: 18.h,
                          margin: EdgeInsets.only(top: 1.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("My Favorites",
                              style: theme.textTheme.labelLarge))
                    ]),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRightBlueGray400,
                        height: 18.v,
                        width: 10.h)
                  ])),
          SizedBox(height: 26.v),
          GestureDetector(
              onTap: () {
                onTapMyAddress(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 106.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLinkedin,
                                      height: 20.v,
                                      width: 14.h),
                                  Padding(
                                      padding: EdgeInsets.only(top: 2.v),
                                      child: Text("My Address",
                                          style: theme.textTheme.labelLarge))
                                ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowRightBlueGray400,
                            height: 18.v,
                            width: 10.h)
                      ]))),
          SizedBox(height: 26.v),
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 111.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup130,
                                  height: 13.v,
                                  width: 20.h,
                                  margin:
                                      EdgeInsets.only(top: 3.v, bottom: 1.v)),
                              Text("Debit Cards",
                                  style: theme.textTheme.labelLarge)
                            ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRightBlueGray400,
                        height: 18.v,
                        width: 10.h)
                  ])),
          SizedBox(height: 27.v),
          GestureDetector(
              onTap: () {
                onTapTransaction(context);
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 120.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgClock,
                                  height: 22.adaptSize,
                                  width: 22.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 2.v),
                                  child: Text("Transactions",
                                      style: theme.textTheme.labelLarge))
                            ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRightBlueGray400,
                        height: 18.v,
                        width: 10.h)
                  ])),
          SizedBox(height: 27.v),
          GestureDetector(
              onTap: () {
                onTapNotification(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup205,
                                  height: 23.v,
                                  width: 19.h),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.h, bottom: 3.v),
                                  child: Text("Notifications",
                                      style: theme.textTheme.labelLarge))
                            ]),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowRightBlueGray400,
                            height: 18.v,
                            width: 10.h,
                            margin: EdgeInsets.symmetric(vertical: 2.v))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildSettingsSection(BuildContext context) {
    return Container(
        height: 161.v,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 12.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 50.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text("</>",
                                style: CustomTextStyles.labelLargeGreen60001)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, top: 3.v),
                            child: Text("Developer Mode",
                                style: theme.textTheme.labelLarge)),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowRightBlueGray400,
                            height: 18.v,
                            width: 10.h,
                            margin: EdgeInsets.only(left: 191.h, bottom: 1.v))
                      ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMaterialSymbol,
                              height: 27.v,
                              width: 30.h),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 11.h, top: 3.v, bottom: 5.v),
                              child: Text("Version",
                                  style: theme.textTheme.labelLarge)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 233.h, top: 4.v, bottom: 4.v),
                              child: Text("1.0.0",
                                  style: CustomTextStyles
                                      .bodySmallBluegray400Light))
                        ]),
                        SizedBox(height: 71.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowDownErrorcontainer,
                                  height: 20.v,
                                  width: 21.h),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 14.h, top: 2.v),
                                  child: Text("Sign out",
                                      style: CustomTextStyles
                                          .labelLargeErrorContainer))
                            ]))
                      ])))
        ]));
  }

  /// Navigates to the aboutMeScreen when the action is triggered.
  onTapAboutMe(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutMeScreen);
  }

  /// Navigates to the addAddressScreen when the action is triggered.
  onTapMyAddress(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addAddressScreen);
  }

  /// Navigates to the transactionsScreen when the action is triggered.
  onTapTransaction(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.transactionsScreen);
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapNotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }
}
