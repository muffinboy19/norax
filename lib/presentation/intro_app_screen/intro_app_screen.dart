import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';

class IntroAppScreen extends StatelessWidget {
  const IntroAppScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 54.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTransparan1,
                height: 266.v,
                width: 208.h,
              ),
              SizedBox(height: 12.v),
              Text(
                "RUNTAHPEDIA",
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
