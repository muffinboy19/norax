import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroAppOneScreen extends StatelessWidget {
  const IntroAppOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 898.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage2,
                      height: 539.v,
                      width: 430.h,
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 61.h, vertical: 74.v),
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
                                Container(
                                    width: 241.h,
                                    margin: EdgeInsets.only(
                                        left: 32.h, right: 33.h),
                                    child: Text("Mudah Jual Sampah",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.displayMedium!
                                            .copyWith(height: 1.10))),
                                SizedBox(height: 10.v),
                                SizedBox(
                                    width: 306.h,
                                    child: Text(
                                        "Menjual sampah, sampahmu pada tempat tertentu dan dapatkan hadiah",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .bodyLargeMontserratGreen300
                                            .copyWith(height: 1.65))),
                                SizedBox(height: 48.v),
                                CustomElevatedButton(
                                    text: "Next  ",
                                    margin: EdgeInsets.only(
                                        left: 30.h, right: 31.h),
                                    rightIcon: Container(
                                        margin: EdgeInsets.only(left: 9.h),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgArrowright,
                                            height: 18.v,
                                            width: 19.h)),
                                    onPressed: () {
                                      onTapNext(context);
                                    })
                              ])))
                ]))));
  }

  /// Navigates to the introAppTwoScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.introAppTwoScreen);
  }
}
