import 'package:flutter/material.dart';
import 'package:ovhay_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:ovhay_s_application1/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:ovhay_s_application1/presentation/home_screen/home_screen.dart';
import 'package:ovhay_s_application1/presentation/thank_you_screen/thank_you_screen.dart';
import 'package:ovhay_s_application1/presentation/eat_healthy_page_tab_container_screen/eat_healthy_page_tab_container_screen.dart';
import 'package:ovhay_s_application1/presentation/select_dish_two_screen/select_dish_two_screen.dart';
import 'package:ovhay_s_application1/presentation/check_list_screen/check_list_screen.dart';
import 'package:ovhay_s_application1/presentation/select_dish_one_screen/select_dish_one_screen.dart';
import 'package:ovhay_s_application1/presentation/dineout_screen/dineout_screen.dart';
import 'package:ovhay_s_application1/presentation/select_dish_three_screen/select_dish_three_screen.dart';
import 'package:ovhay_s_application1/presentation/select_dish_screen/select_dish_screen.dart';
import 'package:ovhay_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';

  static const String verificationCodeScreen = '/verification_code_screen';

  static const String homeScreen = '/home_screen';

  static const String thankYouScreen = '/thank_you_screen';

  static const String eatHealthyPage = '/eat_healthy_page';

  static const String eatHealthyPageTabContainerScreen =
      '/eat_healthy_page_tab_container_screen';

  static const String selectDishTwoScreen = '/select_dish_two_screen';

  static const String checkListScreen = '/check_list_screen';

  static const String viewCartPage = '/view_cart_page';

  static const String selectDishOneScreen = '/select_dish_one_screen';

  static const String dineoutScreen = '/dineout_screen';

  static const String selectDishThreeScreen = '/select_dish_three_screen';

  static const String selectDishScreen = '/select_dish_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    signUpScreen: (context) => SignUpScreen(),
    verificationCodeScreen: (context) => VerificationCodeScreen(),
    homeScreen: (context) => HomeScreen(),
    thankYouScreen: (context) => ThankYouScreen(),
    eatHealthyPageTabContainerScreen: (context) =>
        EatHealthyPageTabContainerScreen(),
    selectDishTwoScreen: (context) => SelectDishTwoScreen(),
    checkListScreen: (context) => CheckListScreen(),
    selectDishOneScreen: (context) => SelectDishOneScreen(),
    dineoutScreen: (context) => DineoutScreen(),
    selectDishThreeScreen: (context) => SelectDishThreeScreen(),
    selectDishScreen: (context) => SelectDishScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SignUpScreen(),
  };
}
