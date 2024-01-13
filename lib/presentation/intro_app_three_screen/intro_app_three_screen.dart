import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/custom_elevated_button.dart';
import 'package:google_solutions/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroAppThreeScreen extends StatelessWidget {
  const IntroAppThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 898.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage4,
                      height: 520.v,
                      width: 430.h,
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 74.v),
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
                                SizedBox(height: 27.v),
                                SizedBox(
                                    width: 396.h,
                                    child: Text("Daur Ulang\nDitempat Terdekat",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.displayMedium!
                                            .copyWith(height: 1.10))),
                                SizedBox(height: 10.v),
                                Container(
                                    width: 293.h,
                                    margin: EdgeInsets.only(
                                        left: 53.h, right: 52.h),
                                    child: Text(
                                        "Dengan mendaur ulang, kamu turut serta melestarikan bumi dan kesejahteraan masyarakat",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .bodyLargeMontserratGreen300
                                            .copyWith(height: 1.65))),
                                SizedBox(height: 27.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 52.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomOutlinedButton(
                                              width: 139.h,
                                              text: "Back",
                                              onPressed: () {
                                                onTapBack(context);
                                              }),
                                          CustomElevatedButton(
                                              width: 139.h,
                                              text: "Next  ",
                                              margin:
                                                  EdgeInsets.only(left: 14.h),
                                              onPressed: () {
                                                onTapNext(context);
                                              })
                                        ]))
                              ])))
                ]))));
  }

  /// Navigates to the introAppTwoScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.introAppTwoScreen);
  }

  /// Navigates to the introAppFourScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.introAppFourScreen);
  }
}
