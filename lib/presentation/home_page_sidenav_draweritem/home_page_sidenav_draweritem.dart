import 'bloc/home_page_sidenav_bloc.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

class HomePageSidenavDraweritem extends StatelessWidget {
  const HomePageSidenavDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Drawer(
        child: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.only(bottom: 9.v),
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 44.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 22.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse1,
                          height: 88.adaptSize,
                          width: 88.adaptSize,
                          radius: BorderRadius.circular(44.h)),
                      SizedBox(height: 11.v),
                      Text("lbl_john_doe".tr,
                          style: CustomTextStyles.titleLargeBold),
                      SizedBox(height: 44.v),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgMaterialSymbolWhiteA700,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(top: 3.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: Text("lbl_dashboard".tr,
                                    style: CustomTextStyles.titleLargeBold))
                          ])),
                      SizedBox(height: 49.v),
                      GestureDetector(
                          onTap: () {
                            onTapComponentThree(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgMdiPushNotificationOutline,
                                    height: 25.adaptSize,
                                    width: 25.adaptSize,
                                    margin: EdgeInsets.only(top: 3.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: Text("lbl_notification".tr,
                                        style: CustomTextStyles.titleLargeBold))
                              ]))),
                      SizedBox(height: 56.v),
                      GestureDetector(
                          onTap: () {
                            onTapComponentNine(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconsaxLinearCard,
                                    height: 25.adaptSize,
                                    width: 25.adaptSize,
                                    margin: EdgeInsets.only(top: 3.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: Text("lbl_card".tr,
                                        style: CustomTextStyles.titleLargeBold))
                              ]))),
                      SizedBox(height: 55.v),
                      GestureDetector(
                          onTap: () {
                            onTapComponentSix(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgMdiAboutCircleOutline,
                                    height: 25.adaptSize,
                                    width: 25.adaptSize,
                                    margin: EdgeInsets.only(top: 3.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: Text("lbl_about_us".tr,
                                        style: CustomTextStyles.titleLargeBold))
                              ]))),
                      SizedBox(height: 60.v),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: _buildLogOutSection(context)),
                      SizedBox(height: 53.v),
                      GestureDetector(
                          onTap: () {
                            onTapComponentTen(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconsaxLinearSetting3,
                                    height: 25.adaptSize,
                                    width: 25.adaptSize,
                                    margin:
                                        EdgeInsets.symmetric(vertical: 1.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: Text("lbl_settings".tr,
                                        style: CustomTextStyles.titleLargeBold))
                              ]))),
                      SizedBox(height: 87.v),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: _buildLogOutSection(context))
                    ]))));
  }

  /// Common widget
  Widget _buildLogOutSection(BuildContext context) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgClarityLogoutLine,
          height: 25.adaptSize,
          width: 25.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 1.v)),
      Padding(
          padding: EdgeInsets.only(left: 15.h),
          child: Text("lbl_log_out".tr, style: CustomTextStyles.titleLargeBold))
    ]);
  }

  /// Navigates to the notificationOneContainerScreen when the action is triggered.
  onTapComponentThree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationOneContainerScreen,
    );
  }

  /// Navigates to the notificationOneContainerScreen when the action is triggered.
  onTapComponentNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationOneContainerScreen,
    );
  }

  /// Navigates to the historyScreen when the action is triggered.
  onTapComponentSix(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.historyScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapComponentTen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }
}
