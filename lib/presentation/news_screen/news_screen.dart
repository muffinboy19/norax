import '../news_screen/widgets/cardslist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/app_bar/appbar_title.dart';
import 'package:google_solutions/widgets/app_bar/custom_app_bar.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                height: 1784.v,
                width: 428.h,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Stack(alignment: Alignment.topCenter, children: [
                  SizedBox(
                      width: double.maxFinite,
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: EdgeInsets.only(left: 21.h, right: 26.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Trending",
                                        style: CustomTextStyles
                                            .titleMediumPoppinsBlack90001),
                                    SizedBox(height: 13.v),
                                    _buildCardsList(context)
                                  ])))),
                  _buildHomeRow(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 86.v,
        title: AppbarTitle(
            text: "News",
            margin: EdgeInsets.only(left: 21.h, top: 33.v, bottom: 4.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildCardsList(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 16.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return CardslistItemWidget(onTapImgCardImage: () {
                onTapImgCardImage(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            width: 428.h,
            margin: EdgeInsets.only(top: 709.v, bottom: 958.v),
            padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 16.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgGroup143),
                    fit: BoxFit.cover)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 24.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgHomeBlueGray400,
                                height: 22.v,
                                width: 23.h,
                                alignment: Alignment.center),
                            SizedBox(height: 1.v),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text("Home",
                                    style: CustomTextStyles.interBluegray400))
                          ])),
                  Spacer(flex: 20),
                  Padding(
                      padding: EdgeInsets.only(top: 24.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgNavActivity,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                margin: EdgeInsets.only(left: 2.h)),
                            SizedBox(height: 1.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("Activity",
                                    style:
                                        CustomTextStyles.interBluegray400Bold))
                          ])),
                  Spacer(flex: 60),
                  Padding(
                      padding: EdgeInsets.only(top: 23.v),
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgNavMassage,
                            height: 21.adaptSize,
                            width: 21.adaptSize),
                        SizedBox(height: 3.v),
                        Text("Massage",
                            style: CustomTextStyles.interBluegray400)
                      ])),
                  Spacer(flex: 18),
                  GestureDetector(
                      onTap: () {
                        onTapLock(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(top: 23.v),
                          child: Column(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgLockBlueGray400,
                                height: 22.adaptSize,
                                width: 22.adaptSize),
                            SizedBox(height: 1.v),
                            Text("Account",
                                style: CustomTextStyles.interBluegray300)
                          ])))
                ])));
  }

  /// Navigates to the newsDetailScreen when the action is triggered.
  onTapImgCardImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newsDetailScreen);
  }

  /// Navigates to the accountContainerScreen when the action is triggered.
  onTapLock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountContainerScreen);
  }
}
