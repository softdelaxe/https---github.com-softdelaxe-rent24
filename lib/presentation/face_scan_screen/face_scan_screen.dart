import 'bloc/face_scan_bloc.dart';
import 'models/face_scan_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/presentation/notification_one_page/notification_one_page.dart';
import 'package:rent24/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class FaceScanScreen extends StatelessWidget {
  FaceScanScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FaceScanBloc>(
        create: (context) =>
            FaceScanBloc(FaceScanState(faceScanModelObj: FaceScanModel()))
              ..add(FaceScanInitialEvent()),
        child: FaceScanScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<FaceScanBloc, FaceScanState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: appTheme.gray5001,
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.black900.withOpacity(0.15),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(0, 40))
                      ],
                      gradient: LinearGradient(
                          begin: Alignment(0, 0.02),
                          end: Alignment(1, 1),
                          colors: [appTheme.gray700, appTheme.gray40001])),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(21.h),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgGroup25),
                              fit: BoxFit.cover)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowLeftWhiteA700,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                  margin: EdgeInsets.only(top: 1.v),
                                  onTap: () {
                                    onTapImgArrowLeft(context);
                                  }),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 27.h, bottom: 3.v),
                                  child: Text("lbl_face_scan".tr,
                                      style: theme.textTheme.titleLarge))
                            ]),
                            SizedBox(height: 78.v),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 345.v,
                                    width: 260.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(172.h),
                                        border: Border.all(
                                            color: appTheme.whiteA700,
                                            width: 4.h)))),
                            SizedBox(height: 5.v)
                          ]))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
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
