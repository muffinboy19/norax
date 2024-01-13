import 'package:flutter/material.dart';
import 'package:google_solutions/presentation/intro_app_screen/intro_app_screen.dart';
import 'package:google_solutions/presentation/intro_app_one_screen/intro_app_one_screen.dart';
import 'package:google_solutions/presentation/intro_app_two_screen/intro_app_two_screen.dart';
import 'package:google_solutions/presentation/intro_app_three_screen/intro_app_three_screen.dart';
import 'package:google_solutions/presentation/intro_app_four_screen/intro_app_four_screen.dart';
import 'package:google_solutions/presentation/sign_up_and_sign_in_screen/sign_up_and_sign_in_screen.dart';
import 'package:google_solutions/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:google_solutions/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:google_solutions/presentation/account_container_screen/account_container_screen.dart';
import 'package:google_solutions/presentation/about_me_screen/about_me_screen.dart';
import 'package:google_solutions/presentation/add_address_screen/add_address_screen.dart';
import 'package:google_solutions/presentation/transactions_screen/transactions_screen.dart';
import 'package:google_solutions/presentation/notifications_screen/notifications_screen.dart';
import 'package:google_solutions/presentation/shopping_three_screen/shopping_three_screen.dart';
import 'package:google_solutions/presentation/news_screen/news_screen.dart';
import 'package:google_solutions/presentation/news_detail_screen/news_detail_screen.dart';
import 'package:google_solutions/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String introAppScreen = '/intro_app_screen';

  static const String introAppOneScreen = '/intro_app_one_screen';

  static const String introAppTwoScreen = '/intro_app_two_screen';

  static const String introAppThreeScreen = '/intro_app_three_screen';

  static const String introAppFourScreen = '/intro_app_four_screen';

  static const String signUpAndSignInScreen = '/sign_up_and_sign_in_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String accountPage = '/account_page';

  static const String accountContainerScreen = '/account_container_screen';

  static const String aboutMeScreen = '/about_me_screen';

  static const String addAddressScreen = '/add_address_screen';

  static const String transactionsScreen = '/transactions_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String shoppingThreeScreen = '/shopping_three_screen';

  static const String newsScreen = '/news_screen';

  static const String newsDetailScreen = '/news_detail_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    introAppScreen: (context) => IntroAppScreen(),
    introAppOneScreen: (context) => IntroAppOneScreen(),
    introAppTwoScreen: (context) => IntroAppTwoScreen(),
    introAppThreeScreen: (context) => IntroAppThreeScreen(),
    introAppFourScreen: (context) => IntroAppFourScreen(),
    signUpAndSignInScreen: (context) => SignUpAndSignInScreen(),
    signInScreen: (context) => SignInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    accountContainerScreen: (context) => AccountContainerScreen(),
    aboutMeScreen: (context) => AboutMeScreen(),
    addAddressScreen: (context) => AddAddressScreen(),
    transactionsScreen: (context) => TransactionsScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    shoppingThreeScreen: (context) => ShoppingThreeScreen(),
    newsScreen: (context) => NewsScreen(),
    newsDetailScreen: (context) => NewsDetailScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
