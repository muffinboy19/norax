import 'package:flutter/material.dart';
import 'package:google_solutions/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Intro app",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.introAppScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Intro app One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.introAppOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Intro app Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.introAppTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Intro app Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.introAppThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Intro app Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.introAppFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign up and Sign in",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpAndSignInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "👤  Account - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "About me",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aboutMeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add address",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Transactions",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.transactionsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Shopping Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shoppingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "📰 News",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.newsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "News Detail",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.newsDetailScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
