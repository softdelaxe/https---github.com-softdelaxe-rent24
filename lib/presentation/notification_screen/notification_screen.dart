import 'bloc/notification_bloc.dart';
import 'models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rent24/core/app_export.dart';
import 'package:rent24/presentation/notification_one_page/notification_one_page.dart';
import 'package:rent24/widgets/custom_bottom_bar.dart';
import 'package:rent24/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationBloc>(
        create: (context) => NotificationBloc(
            NotificationState(notificationModelObj: NotificationModel()))
          ..add(NotificationInitialEvent()),
        child: NotificationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: Column(children: [
                  SizedBox(height: 22.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeftGray800,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 23.h),
                            child: Text("lbl_support".tr,
                                style: CustomTextStyles.titleLargeBluegray900))
                      ])),
                  SizedBox(height: 78.v),
                  SizedBox(
                      height: 72.v,
                      width: 60.h,
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconsaxBulkHeadphone,
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            alignment: Alignment.topCenter),
                        CustomImageView(
                            imagePath: ImageConstant.imgIconsaxLinearHeadphone,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(left: 16.h))
                      ])),
                  SizedBox(height: 26.v),
                  Container(
                      width: 264.h,
                      margin: EdgeInsets.only(left: 37.h, right: 46.h),
                      child: Text("msg_how_can_we_help".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.headlineLargeUbuntuOnPrimary
                              .copyWith(height: 1.33))),
                  SizedBox(height: 46.v),
                  Padding(
                      padding: EdgeInsets.only(left: 8.h, right: 9.h),
                      child: BlocSelector<NotificationBloc, NotificationState,
                              TextEditingController?>(
                          selector: (state) =>
                              state.iconsaxBulkheadphoneController,
                          builder: (context, iconsaxBulkheadphoneController) {
                            return CustomTextFormField(
                                controller: iconsaxBulkheadphoneController,
                                hintText: "msg_contact_live_chat".tr,
                                hintStyle:
                                    CustomTextStyles.titleLargeUbuntuGray900,
                                textInputAction: TextInputAction.done,
                                prefix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        17.h, 19.v, 16.h, 19.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgIconsaxBulkHeadphone,
                                        height: 30.adaptSize,
                                        width: 30.adaptSize)),
                                prefixConstraints:
                                    BoxConstraints(maxHeight: 68.v),
                                suffix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 23.v, 14.h, 21.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgIconsaxLinearArrowright2,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize)),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 68.v),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 22.v));
                          })),
                  SizedBox(height: 59.v),
                  Container(
                      height: 75.adaptSize,
                      width: 75.adaptSize,
                      padding: EdgeInsets.all(17.h),
                      decoration: AppDecoration.fillPrimary2.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder35),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgIconsaxLinearSmstracking,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          alignment: Alignment.center)),
                  SizedBox(height: 15.v),
                  Text("msg_send_us_an_email".tr,
                      style: CustomTextStyles.titleMediumGray50001),
                  SizedBox(height: 10.v),
                  Text("lbl_rent24_info_com".tr,
                      style: CustomTextStyles.titleMediumOnPrimary),
                  SizedBox(height: 60.v),
                  Container(
                      height: 80.v,
                      width: 70.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 16.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgGroup67),
                              fit: BoxFit.cover)),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgIconsaxLinearAdd,
                          height: 45.adaptSize,
                          width: 45.adaptSize,
                          alignment: Alignment.bottomCenter))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconsaxoutlinehome2:
        return AppRoutes.notificationOnePage;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Iconsaxtwotoneheart:
        return "/";
      case BottomBarEnum.Iconsaxtwotoneprofile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.notificationOnePage:
        return NotificationOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
