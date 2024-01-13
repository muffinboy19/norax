import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/app_bar/appbar_leading_image.dart';
import 'package:google_solutions/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:google_solutions/widgets/app_bar/custom_app_bar.dart';
import 'package:google_solutions/widgets/custom_icon_button.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 39.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 25.h, right: 17.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 52.v,
                                width: 192.h,
                                child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              width: 192.h,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                        height: 52.adaptSize,
                                                        width: 52.adaptSize,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .gray10004,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        26.h))),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 10.v,
                                                                bottom: 5.v),
                                                        child: _buildBlu(
                                                            context,
                                                            gopayText: "Gopay",
                                                            timeText:
                                                                "Dec 12 2021 at 10:00 pm"))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 12.h, right: 151.h),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroupCyanA700,
                                                        height: 16.adaptSize,
                                                        width: 16.adaptSize),
                                                    SizedBox(height: 3.v),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroupBlack90001,
                                                        height: 6.v,
                                                        width: 28.h)
                                                  ])))
                                    ])),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 23.v, bottom: 5.v),
                                child: Text("Rp12.000",
                                    style:
                                        CustomTextStyles.titleSmallGreen60001))
                          ])),
                  SizedBox(height: 24.v),
                  _buildTwentyOne(context,
                      gopayText: "Blu",
                      timeText: "Dec 12 2021 at 10:00 pm",
                      amountText: "Rp250.000"),
                  SizedBox(height: 10.v),
                  _buildEightySix(context),
                  SizedBox(height: 10.v),
                  _buildTwentyOne(context,
                      gopayText: "Gopay",
                      timeText: "Dec 12 2021 at 10:00 pm",
                      amountText: "Rp7.000"),
                  SizedBox(height: 10.v),
                  _buildBankBCA1(context),
                  SizedBox(height: 10.v),
                  _buildSettings(context),
                  SizedBox(height: 5.v)
                ]))));
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
        title: AppbarSubtitleOne(text: "Transactions"));
  }

  /// Section Widget
  Widget _buildEightySix(BuildContext context) {
    return SizedBox(
        height: 80.v,
        width: 380.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 27.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Text("Rp2.000",
                            style: CustomTextStyles.titleSmallGreen60001)
                      ]))),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Row(children: [
                    SizedBox(
                        height: 52.v,
                        width: 59.h,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 52.adaptSize,
                                  width: 52.adaptSize,
                                  decoration: BoxDecoration(
                                      color: appTheme.gray10004,
                                      borderRadius:
                                          BorderRadius.circular(26.h)))),
                          CustomImageView(
                              imagePath: ImageConstant.imgFloatingIcon,
                              height: 28.v,
                              width: 59.h,
                              alignment: Alignment.center)
                        ])),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 18.h, top: 9.v, bottom: 5.v),
                        child: _buildBlu(context,
                            gopayText: "Gopay",
                            timeText: "Dec 12 2021 at 10:00 pm"))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildBankBCA1(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(14.h),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
              height: 52.adaptSize,
              width: 52.adaptSize,
              margin: EdgeInsets.only(left: 11.h),
              padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 19.v),
              decoration: AppDecoration.fillGray10004
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
              child: CustomImageView(
                  imagePath: ImageConstant.img1200pxBankCentralAsia,
                  height: 13.v,
                  width: 41.h,
                  alignment: Alignment.bottomCenter)),
          Padding(
              padding: EdgeInsets.only(left: 22.h, top: 8.v, bottom: 5.v),
              child: _buildBlu(context,
                  gopayText: "Bank BCA", timeText: "Dec 12 2021 at 10:00 pm")),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 19.v, bottom: 9.v),
              child: Text("Rp10.000",
                  style: CustomTextStyles.titleSmallGreen60001))
        ]));
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return SizedBox(
        height: 80.v,
        width: 380.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgSettingsOnerror,
              height: 12.v,
              width: 42.h,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 30.h)),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 14.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                        height: 52.adaptSize,
                        width: 52.adaptSize,
                        margin: EdgeInsets.only(left: 8.h),
                        decoration: BoxDecoration(
                            color: appTheme.gray10004,
                            borderRadius: BorderRadius.circular(26.h))),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 22.h, top: 6.v, bottom: 6.v),
                        child: _buildBlu(context,
                            gopayText: "Bank Mandiri",
                            timeText: "Dec 12 2021 at 10:00 pm")),
                    Spacer(),
                    Padding(
                        padding: EdgeInsets.only(top: 17.v, bottom: 11.v),
                        child: Text("Rp30.000",
                            style: CustomTextStyles.titleSmallGreen60001))
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildBlu(
    BuildContext context, {
    required String gopayText,
    required String timeText,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(gopayText,
          style: CustomTextStyles.titleSmallBlack90001SemiBold
              .copyWith(color: appTheme.black90001)),
      Text(timeText,
          style:
              theme.textTheme.bodySmall!.copyWith(color: appTheme.black90001))
    ]);
  }

  /// Common widget
  Widget _buildTwentyOne(
    BuildContext context, {
    required String gopayText,
    required String timeText,
    required String amountText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 14.v),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              width: 192.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                        height: 52.adaptSize,
                        width: 52.adaptSize,
                        padding: EdgeInsets.all(11.h),
                        decoration: IconButtonStyleHelper.fillGray,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgPaypal1)),
                    Padding(
                        padding: EdgeInsets.only(top: 9.v, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(gopayText,
                                  style: CustomTextStyles
                                      .titleSmallBlack90001SemiBold
                                      .copyWith(color: appTheme.black90001)),
                              Text(timeText,
                                  style: theme.textTheme.bodySmall!
                                      .copyWith(color: appTheme.black90001))
                            ]))
                  ])),
          Padding(
              padding: EdgeInsets.only(top: 17.v, bottom: 11.v),
              child: Text(amountText,
                  style: CustomTextStyles.titleSmallGreen60001
                      .copyWith(color: appTheme.green60001)))
        ]));
  }

  /// Navigates to the accountContainerScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountContainerScreen);
  }
}
