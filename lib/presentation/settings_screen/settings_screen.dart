import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rent24/core/app_export.dart';
import 'package:rent24/presentation/notification_one_page/notification_one_page.dart';
import 'package:rent24/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 22.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 21.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowLeftWhiteA700,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                  onTap: () {
                                    onTapImgArrowLeft(context);
                                  }),
                              Padding(
                                  padding: EdgeInsets.only(left: 23.h),
                                  child: Text("lbl_settings".tr,
                                      style: theme.textTheme.titleLarge))
                            ]))),
                    SizedBox(height: 23.v),
                    _buildHelloRow(context),
                    SizedBox(height: 30.v),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL30),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 37.v),
                          Padding(
                              padding: EdgeInsets.only(left: 21.h, right: 29.h),
                              child: _buildMyCardRow(context,
                                  cardImage:
                                      ImageConstant.imgIconsaxLinearDirectsend,
                                  cardText: "lbl_transfer_funds".tr)),
                          SizedBox(height: 20.v),
                          Padding(
                              padding: EdgeInsets.only(left: 21.h, right: 29.h),
                              child: _buildMyCardRow(context,
                                  cardImage: ImageConstant
                                      .imgIconsaxLinearCardOnprimary,
                                  cardText: "lbl_my_card".tr)),
                          SizedBox(height: 20.v),
                          Padding(
                              padding: EdgeInsets.only(left: 21.h, right: 29.h),
                              child: _buildMyCardRow(context,
                                  cardImage:
                                      ImageConstant.imgIconsaxLinearProfile,
                                  cardText: "lbl_profile".tr,
                                  onTapMyCardRow: () {
                                onTapSixtySeven(context);
                              })),
                          SizedBox(height: 20.v),
                          _buildChangePasswordStack(context),
                          SizedBox(height: 20.v),
                          Padding(
                              padding: EdgeInsets.only(left: 21.h, right: 29.h),
                              child: _buildMyCardRow(context,
                                  cardImage:
                                      ImageConstant.imgIconsaxLinearFingerscan,
                                  cardText: "msg_face_recognition".tr,
                                  onTapMyCardRow: () {
                                onTapSeventyOne(context);
                              })),
                          SizedBox(height: 17.v),
                          Padding(
                              padding: EdgeInsets.only(left: 21.h, right: 29.h),
                              child: _buildMyCardRow(context,
                                  cardImage: ImageConstant.imgBiClockHistory,
                                  cardText: "lbl_renting_history".tr,
                                  onTapMyCardRow: () {
                                onTapSeventyTwo(context);
                              })),
                          SizedBox(height: 57.v),
                          _buildHowCanWeHelpStack(context)
                        ]))
                  ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildHelloRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse13,
              height: 70.adaptSize,
              width: 70.adaptSize,
              radius: BorderRadius.circular(35.h)),
          Padding(
              padding: EdgeInsets.only(left: 7.h, top: 10.v, bottom: 10.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text("lbl_hello".tr,
                            style:
                                CustomTextStyles.titleSmallSansationGray20001)),
                    SizedBox(height: 4.v),
                    Text("lbl_john_doe".tr, style: theme.textTheme.titleLarge)
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgIconsaxLinearEdit,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(top: 19.v, bottom: 26.v),
              onTap: () {
                onTapImgIconsaxLinearEdit(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildChangePasswordStack(BuildContext context) {
    return SizedBox(
        height: 49.v,
        width: 340.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(55.h, 14.v, 19.h, 10.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_change_password".tr,
                            style: CustomTextStyles.titleMediumNunitoOnPrimary),
                        CustomImageView(
                            imagePath: ImageConstant
                                .imgIconsaxLinearArrowright2Onprimary,
                            height: 24.adaptSize,
                            width: 24.adaptSize)
                      ]))),
          _buildMyCardRow(context,
              cardImage: ImageConstant.imgIconsaxBrokenLock1,
              cardText: "lbl_change_password".tr)
        ]));
  }

  /// Section Widget
  Widget _buildHowCanWeHelpStack(BuildContext context) {
    return Container(
        height: 142.v,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 29.h),
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                  onTap: () {
                    onTapSixtyNine(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: 1.h, bottom: 74.v),
                      padding: EdgeInsets.symmetric(
                          horizontal: 17.h, vertical: 19.v),
                      decoration: AppDecoration.fillPrimary3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgIconsaxBulkHeadphone,
                                height: 30.adaptSize,
                                width: 30.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 6.v, bottom: 2.v),
                                child: Text("msg_how_can_we_help2".tr,
                                    style:
                                        CustomTextStyles.titleMediumGray900)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgIconsaxLinearArrowright2,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 40.h, top: 4.v))
                          ])))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 80.v,
                  width: 70.h,
                  margin: EdgeInsets.only(top: 24.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup67),
                          fit: BoxFit.cover)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconsaxLinearAdd,
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                      alignment: Alignment.bottomCenter)))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildMyCardRow(
    BuildContext context, {
    required String cardImage,
    required String cardText,
    Function? onTapMyCardRow,
  }) {
    return GestureDetector(
        onTap: () {
          onTapMyCardRow!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 8.v),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                      imagePath: cardImage,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      margin: EdgeInsets.only(top: 3.v)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 21.h, top: 6.v, bottom: 2.v),
                      child: Text(cardText,
                          style: CustomTextStyles.titleMediumNunitoOnPrimary
                              .copyWith(color: theme.colorScheme.onPrimary))),
                  Spacer(),
                  CustomImageView(
                      imagePath:
                          ImageConstant.imgIconsaxLinearArrowright2Onprimary,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 7.v, right: 15.h))
                ])));
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

  /// Navigates to the profileScreen when the action is triggered.
  onTapImgIconsaxLinearEdit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the profileOneScreen when the action is triggered.
  onTapSixtySeven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileOneScreen,
    );
  }

  /// Navigates to the faceReconginitionScreen when the action is triggered.
  onTapSeventyOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.faceReconginitionScreen,
    );
  }

  /// Navigates to the faceReconginitionScreen when the action is triggered.
  onTapSeventyTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.faceReconginitionScreen,
    );
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapSixtyNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationScreen,
    );
  }
}
