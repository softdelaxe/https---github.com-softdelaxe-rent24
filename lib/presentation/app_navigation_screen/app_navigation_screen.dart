import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
// Import the localization package

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
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
                              screenTitle: "Splash".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Page One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homePageOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "splash light".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashLightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboard".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.onboardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign up".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Password reset".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.passwordResetScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Confirm reset".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.confirmResetScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Confirm reset One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.confirmResetOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reset Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homePageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "call to action One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.callToActionOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "call to action".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.callToActionScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "call to action Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.callToActionThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "call to action Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.callToActionTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notification One - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationOneContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Review".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.reviewScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "chat".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.chatScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "chat One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.chatOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "History".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.historyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notification".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Support".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.supportScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Settings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Face reconginition".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.faceReconginitionScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Face Scan".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.faceScanScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "face completed".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.faceCompletedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Ride".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.rideScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Location".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.locationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Select Cab Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.selectCabTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Select Cab One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.selectCabOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Card".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "E-receipt".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.eReceiptScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Dashboard".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.dashboardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "New lsiting".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.newLsitingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "New lsiting One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.newLsitingOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Transaction History".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.transactionHistoryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Transaction History One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.transactionHistoryOneScreen),
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
      },
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
                "App Navigation".tr,
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
                "Check your app's UI from the below demo screens of your app."
                    .tr,
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
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
