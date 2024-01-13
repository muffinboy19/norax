import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/widgets/app_bar/appbar_leading_image.dart';
import 'package:google_solutions/widgets/app_bar/appbar_subtitle.dart';
import 'package:google_solutions/widgets/app_bar/appbar_trailing_image.dart';
import 'package:google_solutions/widgets/app_bar/custom_app_bar.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 17.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 23.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse,
                                        height: 50.adaptSize,
                                        width: 50.adaptSize,
                                        radius: BorderRadius.circular(25.h)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, top: 4.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Greenpeace Indonesia",
                                                  style: CustomTextStyles
                                                      .titleMediumPoppinsBlack90001SemiBold),
                                              Text("22 July 2022",
                                                  style: CustomTextStyles
                                                      .bodyMedium14)
                                            ]))
                                  ])),
                              SizedBox(height: 16.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage1248x380,
                                  height: 248.v,
                                  width: 380.h,
                                  radius: BorderRadius.circular(6.h),
                                  margin: EdgeInsets.only(left: 1.h)),
                              SizedBox(height: 15.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("Indonesia",
                                      style: CustomTextStyles.bodyMedium14)),
                              SizedBox(height: 5.v),
                              Container(
                                  width: 377.h,
                                  margin: EdgeInsets.only(left: 1.h),
                                  child: Text(
                                      "Sampah plastik: Reduce dan Reuse dahulu sebelum Recycle",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .headlineSmallPoppinsBlack90001
                                          .copyWith(height: 1.50))),
                              SizedBox(height: 13.v),
                              Container(
                                  width: 380.h,
                                  margin: EdgeInsets.only(left: 1.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "Indonesia adalah salah satu negara penghasil sampah terbanyak di dunia dengan menduduki urutan kedua kontributor sampah terbanyak di dunia setelah China. Berdasarkan temuan data yang dilansir dari laporan The World Bank bekerja sama dengan Kementerian Koordinator Bidang Kemaritiman dan Investasi Republik Indonesia (Kemenko Maritim), Plastic Waste Discharge, menemukan bahwa Indonesia menghasilkan sampah sekitar 7,8 juta ton sampah plastik di laut setiap tahunnya. Itu hanyalah sampah plastik, belum termasuk sampah jenis lainnya.\n\nSayangnya, hanya sebagian sampah plastik yang berhasil di daur ulang. Sisanya, sampah akan berakhir di tempat pembuangan akhir, mesin insinerator, menyumbat aliran air hingga mencemari dan mengancam biota laut. Belum cukup di situ, bahkan sampah dari negara lain juga dibuang di Indonesia.\n\n",
                                            style: CustomTextStyles
                                                .bodyLargeff4e4b66
                                                .copyWith(height: 1.50)),
                                        TextSpan(
                                            text:
                                                "Indonesia sebagai ladang sampah \r\n\r\nSudah menjadi rahasia umum bahwa selain menjadi ladang penuh sumber daya pangan, Indonesia juga menjadi ladang sampah. Walaupun begitu, fakta itu tidak menyurutkan pelaku usaha pengimpor sampah plastik dari negara kaya.\r\n\r\nIndonesia sudah lama menjadi salah satu importir sampah terbesar di dunia. Dilansir dari data UN Comtrade, sekitar 138 ribu ton sampah plastik diimpor dari berbagai negara maju pada tahun 2020. Belanda menjadi pengimpor sampah plastik terbesar di Indonesia. Sebanyak 51,5 ribu ton sampah plastik diimpor dari negara tersebut. Tak hanya Belanda, negara seperti Jerman, Slovenia, Amerika Serikat, bahkan Singapura turut menjadi negara pengimpor.",
                                            style: CustomTextStyles
                                                .titleMediumPoppinsff4e4b66
                                                .copyWith(height: 1.50))
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 12.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgC4dfed39Ternya,
                                  height: 311.v,
                                  width: 381.h,
                                  margin: EdgeInsets.only(left: 1.h)),
                              SizedBox(height: 17.v),
                              Container(
                                  width: 370.h,
                                  margin:
                                      EdgeInsets.only(left: 1.h, right: 10.h),
                                  child: Text(
                                      "Mereka berdalih sampah yang diimpor dari luar negeri digunakan untuk didaur ulang. Anehnya, alih-alih mendaur ulang sampah di Indonesia yang telah menggunung dan tak tersentuh, justru malah menambah sampah dengan mengimpor dari negara lain. Ditambah, risiko dan dampak besar turut menggentayangi lingkungan dan kesehatan masyarakat akibat regulasi dan kebijakan pemerintah yang kendor. ",
                                      maxLines: 10,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyLargeBluegray700
                                          .copyWith(height: 1.50)))
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 74.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 34.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "News"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconBlueGray700,
              margin: EdgeInsets.fromLTRB(24.h, 34.v, 24.h, 16.v))
        ],
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
