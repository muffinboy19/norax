import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/custom_elevated_button.dart';

class IntroAppFourScreen extends StatelessWidget {
  const IntroAppFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 898.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage5,
                height: 522.v,
                width: 430.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 48.h,
                    vertical: 74.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup5,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 76.v),
                      SizedBox(
                        width: 329.h,
                        child: Text(
                          "Ayo Bergabung\nBersama Kami",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.displayMedium!.copyWith(
                            height: 1.10,
                          ),
                        ),
                      ),
                      SizedBox(height: 18.v),
                      Container(
                        width: 265.h,
                        margin: EdgeInsets.symmetric(horizontal: 33.h),
                        child: Text(
                          "Menjadi agen Peduli pengolahan sampah Peduli masa depan",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeMontserratGreen300
                              .copyWith(
                            height: 1.65,
                          ),
                        ),
                      ),
                      SizedBox(height: 48.v),
                      CustomElevatedButton(
                        text: "Let’s Get Started",
                        margin: EdgeInsets.only(
                          left: 21.h,
                          right: 22.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
