import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/app_bar/appbar_leading_image.dart';
import 'package:google_solutions/widgets/app_bar/appbar_title.dart';
import 'package:google_solutions/widgets/app_bar/appbar_trailing_image.dart';
import 'package:google_solutions/widgets/app_bar/custom_app_bar.dart';
import 'package:google_solutions/widgets/custom_elevated_button.dart';
import 'package:google_solutions/widgets/custom_icon_button.dart';

class ShoppingThreeScreen extends StatelessWidget {
  const ShoppingThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 31.v,
          ),
          child: Column(
            children: [
              _buildPickupPoint(context),
              SizedBox(height: 34.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img92f1ea7dcce3b5d,
                      height: 42.v,
                      width: 48.h,
                      margin: EdgeInsets.only(bottom: 3.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bell Pepper Red",
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "1kg, 60RP",
                            style: CustomTextStyles.titleMediumGreen60001,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 3.v,
                        bottom: 6.v,
                      ),
                      child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUserGray10003,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        top: 9.v,
                        bottom: 12.v,
                      ),
                      child: Text(
                        "2",
                        style: CustomTextStyles.titleMedium18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 3.v,
                        bottom: 6.v,
                      ),
                      child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPlus,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Divider(),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPngfuel3,
                            height: 38.v,
                            width: 42.h,
                            margin: EdgeInsets.only(bottom: 7.v),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Butternut Squash ",
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "1kg, 80RP",
                                style: CustomTextStyles.titleMediumGreen60001,
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 3.v,
                              bottom: 6.v,
                            ),
                            child: CustomIconButton(
                              height: 36.adaptSize,
                              width: 36.adaptSize,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgUserGray10003,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 9.v,
                        bottom: 12.v,
                      ),
                      child: Text(
                        "4",
                        style: CustomTextStyles.titleMedium18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 3.v,
                        bottom: 6.v,
                      ),
                      child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPlus,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Divider(),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPngfuel4,
                      height: 38.v,
                      width: 42.h,
                      margin: EdgeInsets.only(bottom: 6.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Arabic Ginger",
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "1kg, 40RP",
                            style: CustomTextStyles.titleMediumGreen60001,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 3.v,
                        bottom: 6.v,
                      ),
                      child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUserGray10003,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 9.v,
                        bottom: 12.v,
                      ),
                      child: Text(
                        "4",
                        style: CustomTextStyles.titleMedium18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 3.v,
                        bottom: 6.v,
                      ),
                      child: CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPlus,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              Divider(),
              SizedBox(height: 25.v),
              _buildYourItemPlanned(context),
              SizedBox(height: 12.v),
              Divider(),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your item planned is available at the selected pickup point",
                      style: CustomTextStyles.labelMediumDMSansGray500,
                    ),
                    Container(
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      margin: EdgeInsets.only(
                        left: 3.h,
                        bottom: 2.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 1.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillGreenA.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder5,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 5.v,
                        width: 6.h,
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildCheckout(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownBlack90001,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 51.v,
          bottom: 17.v,
        ),
      ),
      title: AppbarTitle(
        text: "Cart",
        margin: EdgeInsets.only(
          left: 14.h,
          top: 33.v,
          bottom: 2.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgInbox,
          margin: EdgeInsets.fromLTRB(19.h, 53.v, 19.h, 9.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildPickupPoint(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 6.h,
        right: 5.h,
      ),
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pickup Point:",
                  style: CustomTextStyles.titleLargeDMSansGreen60001,
                ),
                Text(
                  "Kantor Desa Demangharjo",
                  style: CustomTextStyles.titleMediumNunitoPrimaryContainer,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "RuntahPedia",
                        style: CustomTextStyles.bodySmallNunitoff868889,
                      ),
                      TextSpan(
                        text: " Recycling center & process",
                        style: CustomTextStyles.labelMediumNunitoff868889,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage10,
            height: 76.adaptSize,
            width: 76.adaptSize,
            radius: BorderRadius.circular(
              9.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYourItemPlanned(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgNicepngCarrotPng143608,
            height: 28.v,
            width: 45.h,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 10.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Organic Carrots",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.v),
                Text(
                  "1kg, 40RP",
                  style: CustomTextStyles.titleMediumGreen60001,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 6.v,
            ),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgUserGray10003,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 9.v,
              bottom: 12.v,
            ),
            child: Text(
              "2",
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
              bottom: 6.v,
            ),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckout(BuildContext context) {
    return CustomElevatedButton(
      height: 53.v,
      text: "Checkout",
      margin: EdgeInsets.only(
        left: 26.h,
        right: 25.h,
        bottom: 28.v,
      ),
      buttonStyle: CustomButtonStyles.fillGreen,
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
    );
  }
}
