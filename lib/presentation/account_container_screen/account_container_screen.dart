import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';
import 'package:google_solutions/presentation/account_page/account_page.dart';
import 'package:google_solutions/widgets/custom_bottom_app_bar.dart';
import 'package:google_solutions/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class AccountContainerScreen extends StatelessWidget {
  AccountContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10006,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(children: [
                  Navigator(
                      key: navigatorKey,
                      initialRoute: AppRoutes.accountPage,
                      onGenerateRoute: (routeSetting) => PageRouteBuilder(
                          pageBuilder: (ctx, ani, ani1) =>
                              getCurrentPage(routeSetting.name!),
                          transitionDuration: Duration(seconds: 0))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomAppBarSection(context),
            floatingActionButton: CustomFloatingButton(
                height: 37,
                width: 37,
                child: CustomImageView(
                    imagePath: ImageConstant.img11,
                    height: 18.5.v,
                    width: 18.5.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildBottomAppBarSection(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.accountPage;
      case BottomBarEnum.Activity:
        return "/";
      case BottomBarEnum.Massage:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.accountPage:
        return AccountPage();
      default:
        return DefaultWidget();
    }
  }
}
