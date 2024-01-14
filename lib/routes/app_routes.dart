import 'package:flutter/material.dart';
import 'package:rent24/presentation/splash_screen/splash_screen.dart';
import 'package:rent24/presentation/home_page_one_screen/home_page_one_screen.dart';
import 'package:rent24/presentation/splash_light_screen/splash_light_screen.dart';
import 'package:rent24/presentation/onboard_screen/onboard_screen.dart';
import 'package:rent24/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:rent24/presentation/login_screen/login_screen.dart';
import 'package:rent24/presentation/password_reset_screen/password_reset_screen.dart';
import 'package:rent24/presentation/confirm_reset_screen/confirm_reset_screen.dart';
import 'package:rent24/presentation/confirm_reset_one_screen/confirm_reset_one_screen.dart';
import 'package:rent24/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:rent24/presentation/home_page_screen/home_page_screen.dart';
import 'package:rent24/presentation/call_to_action_one_screen/call_to_action_one_screen.dart';
import 'package:rent24/presentation/call_to_action_screen/call_to_action_screen.dart';
import 'package:rent24/presentation/call_to_action_three_screen/call_to_action_three_screen.dart';
import 'package:rent24/presentation/call_to_action_two_screen/call_to_action_two_screen.dart';
import 'package:rent24/presentation/notification_one_container_screen/notification_one_container_screen.dart';
import 'package:rent24/presentation/review_screen/review_screen.dart';
import 'package:rent24/presentation/chat_screen/chat_screen.dart';
import 'package:rent24/presentation/chat_one_screen/chat_one_screen.dart';
import 'package:rent24/presentation/history_screen/history_screen.dart';
import 'package:rent24/presentation/notification_screen/notification_screen.dart';
import 'package:rent24/presentation/support_screen/support_screen.dart';
import 'package:rent24/presentation/settings_screen/settings_screen.dart';
import 'package:rent24/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:rent24/presentation/profile_screen/profile_screen.dart';
import 'package:rent24/presentation/face_reconginition_screen/face_reconginition_screen.dart';
import 'package:rent24/presentation/face_scan_screen/face_scan_screen.dart';
import 'package:rent24/presentation/face_completed_screen/face_completed_screen.dart';
import 'package:rent24/presentation/ride_screen/ride_screen.dart';
import 'package:rent24/presentation/location_screen/location_screen.dart';
import 'package:rent24/presentation/select_cab_two_screen/select_cab_two_screen.dart';
import 'package:rent24/presentation/select_cab_one_screen/select_cab_one_screen.dart';
import 'package:rent24/presentation/card_screen/card_screen.dart';
import 'package:rent24/presentation/e_receipt_screen/e_receipt_screen.dart';
import 'package:rent24/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:rent24/presentation/new_lsiting_screen/new_lsiting_screen.dart';
import 'package:rent24/presentation/new_lsiting_one_screen/new_lsiting_one_screen.dart';
import 'package:rent24/presentation/transaction_history_screen/transaction_history_screen.dart';
import 'package:rent24/presentation/transaction_history_one_screen/transaction_history_one_screen.dart';
import 'package:rent24/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String homePageOneScreen = '/home_page_one_screen';

  static const String splashLightScreen = '/splash_light_screen';

  static const String onboardScreen = '/onboard_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String passwordResetScreen = '/password_reset_screen';

  static const String confirmResetScreen = '/confirm_reset_screen';

  static const String confirmResetOneScreen = '/confirm_reset_one_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String callToActionOneScreen = '/call_to_action_one_screen';

  static const String callToActionScreen = '/call_to_action_screen';

  static const String callToActionThreeScreen = '/call_to_action_three_screen';

  static const String callToActionTwoScreen = '/call_to_action_two_screen';

  static const String notificationOnePage = '/notification_one_page';

  static const String notificationOneContainerScreen =
      '/notification_one_container_screen';

  static const String reviewScreen = '/review_screen';

  static const String chatScreen = '/chat_screen';

  static const String chatOneScreen = '/chat_one_screen';

  static const String historyScreen = '/history_screen';

  static const String notificationScreen = '/notification_screen';

  static const String supportScreen = '/support_screen';

  static const String settingsScreen = '/settings_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String profileScreen = '/profile_screen';

  static const String faceReconginitionScreen = '/face_reconginition_screen';

  static const String faceScanScreen = '/face_scan_screen';

  static const String faceCompletedScreen = '/face_completed_screen';

  static const String rideScreen = '/ride_screen';

  static const String locationScreen = '/location_screen';

  static const String selectCabTwoScreen = '/select_cab_two_screen';

  static const String selectCabOneScreen = '/select_cab_one_screen';

  static const String cardScreen = '/card_screen';

  static const String eReceiptScreen = '/e_receipt_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String newLsitingScreen = '/new_lsiting_screen';

  static const String newLsitingOneScreen = '/new_lsiting_one_screen';

  static const String transactionHistoryScreen = '/transaction_history_screen';

  static const String transactionHistoryOneScreen =
      '/transaction_history_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        homePageOneScreen: HomePageOneScreen.builder,
        splashLightScreen: SplashLightScreen.builder,
        onboardScreen: OnboardScreen.builder,
        signUpScreen: SignUpScreen.builder,
        loginScreen: LoginScreen.builder,
        passwordResetScreen: PasswordResetScreen.builder,
        confirmResetScreen: ConfirmResetScreen.builder,
        confirmResetOneScreen: ConfirmResetOneScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        homePageScreen: HomePageScreen.builder,
        callToActionOneScreen: CallToActionOneScreen.builder,
        callToActionScreen: CallToActionScreen.builder,
        callToActionThreeScreen: CallToActionThreeScreen.builder,
        callToActionTwoScreen: CallToActionTwoScreen.builder,
        notificationOneContainerScreen: NotificationOneContainerScreen.builder,
        reviewScreen: ReviewScreen.builder,
        chatScreen: ChatScreen.builder,
        chatOneScreen: ChatOneScreen.builder,
        historyScreen: HistoryScreen.builder,
        notificationScreen: NotificationScreen.builder,
        supportScreen: SupportScreen.builder,
        settingsScreen: SettingsScreen.builder,
        profileOneScreen: ProfileOneScreen.builder,
        profileScreen: ProfileScreen.builder,
        faceReconginitionScreen: FaceReconginitionScreen.builder,
        faceScanScreen: FaceScanScreen.builder,
        faceCompletedScreen: FaceCompletedScreen.builder,
        rideScreen: RideScreen.builder,
        locationScreen: LocationScreen.builder,
        selectCabTwoScreen: SelectCabTwoScreen.builder,
        selectCabOneScreen: SelectCabOneScreen.builder,
        cardScreen: CardScreen.builder,
        eReceiptScreen: EReceiptScreen.builder,
        dashboardScreen: DashboardScreen.builder,
        newLsitingScreen: NewLsitingScreen.builder,
        newLsitingOneScreen: NewLsitingOneScreen.builder,
        transactionHistoryScreen: TransactionHistoryScreen.builder,
        transactionHistoryOneScreen: TransactionHistoryOneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
