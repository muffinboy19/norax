import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';

// ignore: must_be_immutable
class CardslistItemWidget extends StatelessWidget {
  CardslistItemWidget({
    Key? key,
    this.onTapImgCardImage,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgCardImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: 183.v,
            width: 364.h,
            radius: BorderRadius.circular(
              6.h,
            ),
            onTap: () {
              onTapImgCardImage!.call();
            },
          ),
          SizedBox(height: 7.v),
          Text(
            "Indonesia",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 5.v),
          Container(
            width: 346.h,
            margin: EdgeInsets.only(right: 17.h),
            child: Text(
              "Sampah plastik: Reduce dan Reuse dahulu sebelum Recycle",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMobileOnprimarycontainer,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "Greenpeace",
                      style: CustomTextStyles.labelLargeBluegray700,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIcon,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      top: 3.v,
                      bottom: 4.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "22 July 2022",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconBlueGray700,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.only(
                  top: 3.v,
                  bottom: 4.v,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
