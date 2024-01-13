import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/custom_elevated_button.dart';
import 'package:google_solutions/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroAppTwoScreen extends StatelessWidget {
  const IntroAppTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 898.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage3,
                      height: 528.v,
                      width: 430.h,
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 67.h, vertical: 74.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup5),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 38.v),
                                SizedBox(
                                    height: 10.v,
                                    child: AnimatedSmoothIndicator(
                                        activeIndex: 0,
                                        count: 3,
                                        effect: ScrollingDotsEffect(
                                            spacing: 5.81,
                                            activeDotColor: appTheme.green30001,
                                            dotColor: appTheme.blueGray100,
                                            dotHeight: 10.v,
                                            dotWidth: 10.h))),
                                SizedBox(height: 25.v),
                                Container(
                                    width: 246.h,
                                    margin: EdgeInsets.only(
                                        left: 23.h, right: 25.h),
                                    child: Text("Semua Bisa Daur Ulang",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.displayMedium!
                                            .copyWith(height: 1.10))),
                                SizedBox(height: 10.v),
                                SizedBox(
                                    width: 293.h,
                                    child: Text(
                                        "Dengan mendaur ulang, kamu turut serta melestarikan bumi dan kesejahteraan masyarakat",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .bodyLargeMontserratGreen300
                                            .copyWith(height: 1.65))),
                                SizedBox(height: 27.v),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: CustomOutlinedButton(
                                              text: "Back",
                                              margin:
                                                  EdgeInsets.only(right: 7.h),
                                              onPressed: () {
                                                onTapBack(context);
                                              })),
                                      Expanded(
                                          child: CustomElevatedButton(
                                              text: "Next  ",
                                              margin:
                                                  EdgeInsets.only(left: 7.h),
                                              onPressed: () {
                                                onTapNext(context);
                                              }))
                                    ])
                              ])))
                ]))));
  }

  /// Navigates to the introAppOneScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.introAppOneScreen);
  }

  /// Navigates to the introAppThreeScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.introAppThreeScreen);
  }
}
