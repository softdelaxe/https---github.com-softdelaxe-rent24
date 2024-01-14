import 'bloc/home_page_bloc.dart';
import 'models/home_page_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/presentation/notification_one_page/notification_one_page.dart';
import 'package:rent24/widgets/custom_bottom_bar.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';
import 'package:rent24/widgets/custom_icon_button.dart';
import 'package:rent24/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageBloc>(
        create: (context) =>
            HomePageBloc(HomePageState(homePageModelObj: HomePageModel()))
              ..add(HomePageInitialEvent()),
        child: HomePageScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 804.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 17.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildSearchRow(context),
                                        SizedBox(height: 15.v),
                                        _buildFrameOneRow(context),
                                        SizedBox(height: 34.v),
                                        _buildNearFromYouRow(context),
                                        SizedBox(height: 13.v),
                                        _buildFrameFourStack(context),
                                        SizedBox(height: 48.v),
                                        _buildNewProductRow(context),
                                        SizedBox(height: 25.v),
                                        _buildViewHorizontalScroll(context),
                                        SizedBox(height: 262.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgUilProcessor,
                                                      height: 25.adaptSize,
                                                      width: 25.adaptSize),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 8.h, top: 5.v),
                                                      child: Text(
                                                          "lbl_core_i5".tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .labelLarge))
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 804.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGroup11,
                                            height: 57.v,
                                            width: 389.h,
                                            alignment: Alignment.topCenter,
                                            margin: EdgeInsets.only(top: 14.v)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillPrimary
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder1),
                                                child:
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle15803x1,
                                                        height: 803.v,
                                                        width: 1.h)))
                                      ])))
                        ])))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 21.h),
        child: Row(children: [
          Expanded(
              child: BlocSelector<HomePageBloc, HomePageState,
                      TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                        controller: searchController,
                        hintText: "msg_search_product_or".tr);
                  })),
          Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  onTap: () {
                    onTapBtnIconsaxOutline(context);
                  },
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconsaxOutline)))
        ]));
  }

  /// Section Widget
  Widget _buildFrameOneRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 14.h),
        child: Row(children: [
          CustomElevatedButton(
              height: 45.v,
              width: 130.h,
              text: "lbl_accomodation".tr,
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles.gradientPrimaryToIndigoADecoration,
              buttonTextStyle: CustomTextStyles.titleSmallUbuntuAmber500),
          CustomElevatedButton(
              height: 45.v,
              width: 95.h,
              text: "lbl_ride".tr,
              margin: EdgeInsets.only(left: 12.h),
              buttonStyle: CustomButtonStyles.fillGray,
              buttonTextStyle: CustomTextStyles.titleSmallUbuntuBluegray100,
              onPressed: () {
                onTapRide(context);
              }),
          Container(
              height: 45.v,
              width: 109.h,
              margin: EdgeInsets.only(left: 10.h),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 45.v,
                        width: 115.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray50,
                            borderRadius: BorderRadius.circular(10.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Text("lbl_event_center".tr,
                        style: CustomTextStyles.titleSmallUbuntuBluegray100))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildNearFromYouRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 21.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_near_from_you".tr,
              style: CustomTextStyles.titleLargeInterOnPrimary),
          Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text("lbl_see_all".tr,
                  style: CustomTextStyles.titleMediumInterPrimarySemiBold))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFourStack(BuildContext context) {
    return Container(
        height: 332.v,
        width: 369.h,
        margin: EdgeInsets.only(left: 4.h),
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        SizedBox(
                            height: 332.v,
                            width: 285.h,
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 332.v,
                                          width: 285.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.whiteA700,
                                              borderRadius:
                                                  BorderRadius.circular(10.h),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: appTheme.gray50026,
                                                    spreadRadius: 2.h,
                                                    blurRadius: 2.h,
                                                    offset: Offset(0, 10))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 10.h, bottom: 16.v),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 6.h),
                                                    child: Row(children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 2.v),
                                                          child: Text(
                                                              "lbl_duplex_home"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .titleSmallOnPrimarySemiBold)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgMdiNaira,
                                                          height: 18.adaptSize,
                                                          width: 18.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 27.h,
                                                                  top: 1.v)),
                                                      Text("lbl_1_200_00_yr".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumInterPrimary)
                                                    ])),
                                                SizedBox(height: 9.v),
                                                _buildTwentyRow(context,
                                                    textMessage:
                                                        "msg_st_faith_eke_awka"
                                                            .tr),
                                                SizedBox(height: 6.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 6.h),
                                                    child:
                                                        _buildMdiBedOutlineRow(
                                                            context,
                                                            bedRoomText:
                                                                "lbl_6_bed_room"
                                                                    .tr,
                                                            bathRoomText:
                                                                "lbl_4_bath_room"
                                                                    .tr))
                                              ]))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle13,
                                      height: 218.v,
                                      width: 285.h,
                                      radius: BorderRadius.vertical(
                                          top: Radius.circular(10.h)),
                                      alignment: Alignment.topCenter)
                                ])),
                        Container(
                            height: 332.v,
                            width: 285.h,
                            margin: EdgeInsets.only(left: 23.h),
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 332.v,
                                          width: 285.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.whiteA700,
                                              borderRadius:
                                                  BorderRadius.circular(10.h),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: appTheme.gray50026,
                                                    spreadRadius: 2.h,
                                                    blurRadius: 2.h,
                                                    offset: Offset(0, 10))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 10.h, bottom: 13.v),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                _buildNineteen(context,
                                                    dynamicText:
                                                        "lbl_1_200_00_yr".tr),
                                                SizedBox(height: 10.v),
                                                _buildTwentyRow(context,
                                                    textMessage:
                                                        "msg_st_faith_eke_awka"
                                                            .tr),
                                                SizedBox(height: 12.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 54.h),
                                                    child: _buildPsRamRow(
                                                        context,
                                                        fileSizeLabel:
                                                            "lbl_16gb_ram".tr))
                                              ]))),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle13218x285,
                                      height: 218.v,
                                      width: 285.h,
                                      radius: BorderRadius.vertical(
                                          top: Radius.circular(10.h)),
                                      alignment: Alignment.topCenter)
                                ]))
                      ])))),
          Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                  onTap: () {
                    onTapTwentyTwo(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 16.v),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("lbl_laptop_dell".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .titleSmallOnPrimarySemiBold)),
                        SizedBox(height: 38.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgUilProcessor,
                                  height: 25.adaptSize,
                                  width: 25.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.h, top: 4.v, bottom: 2.v),
                                  child: Text("lbl_core_i5".tr,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.labelLarge))
                            ])
                      ]))))
        ]));
  }

  /// Section Widget
  Widget _buildNewProductRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 21.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_new_product".tr,
              style: CustomTextStyles.titleLargeInterOnPrimary),
          Text("lbl_see_all".tr,
              style: CustomTextStyles.titleMediumInterPrimarySemiBold)
        ]));
  }

  /// Section Widget
  Widget _buildViewHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 332.v,
              width: 285.h,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 332.v,
                        width: 285.h,
                        decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(10.h),
                            boxShadow: [
                              BoxShadow(
                                  color: appTheme.gray50026,
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(0, 10))
                            ]))),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10.h, bottom: 16.v),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildLaptopDellRow(context,
                                  laptopDellText: "lbl_duplex_home".tr,
                                  yrText: "lbl_1_200_00_yr".tr),
                              SizedBox(height: 10.v),
                              _buildTwenty1(context,
                                  textMessage: "msg_st_faith_eke_awka".tr),
                              SizedBox(height: 6.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: _buildMdiBedOutlineRow(context,
                                      bedRoomText: "lbl_6_bed_room".tr,
                                      bathRoomText: "lbl_4_bath_room".tr))
                            ]))),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle13,
                    height: 218.v,
                    width: 283.h,
                    radius: BorderRadius.vertical(top: Radius.circular(10.h)),
                    alignment: Alignment.topCenter)
              ])),
          Container(
              height: 332.v,
              width: 285.h,
              margin: EdgeInsets.only(left: 23.h),
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 332.v,
                        width: 285.h,
                        decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(10.h),
                            boxShadow: [
                              BoxShadow(
                                  color: appTheme.gray50026,
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(0, 10))
                            ]))),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10.h, bottom: 13.v),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildLaptopDellRow(context,
                                  laptopDellText: "lbl_laptop_dell".tr,
                                  yrText: "lbl_1_200_00_yr".tr),
                              SizedBox(height: 10.v),
                              _buildTwenty1(context,
                                  textMessage: "msg_st_faith_eke_awka".tr),
                              SizedBox(height: 12.v),
                              Padding(
                                  padding: EdgeInsets.only(right: 54.h),
                                  child: _buildPsRamRow(context,
                                      fileSizeLabel: "lbl_16gb_ram".tr))
                            ]))),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle13218x285,
                    height: 218.v,
                    width: 285.h,
                    radius: BorderRadius.vertical(top: Radius.circular(10.h)),
                    alignment: Alignment.topCenter)
              ]))
        ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildTwentyRow(
    BuildContext context, {
    required String textMessage,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgIconsaxBoldLocation,
          height: 20.v,
          width: 21.h),
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(textMessage,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall!
                  .copyWith(color: appTheme.gray40002)))
    ]);
  }

  /// Common widget
  Widget _buildNineteen(
    BuildContext context, {
    required String dynamicText,
  }) {
    return SizedBox(
        height: 20.v,
        width: 117.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.centerRight,
              child: Text(dynamicText,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumInterPrimary
                      .copyWith(color: theme.colorScheme.primary))),
          CustomImageView(
              imagePath: ImageConstant.imgMdiNaira,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.bottomLeft)
        ]));
  }

  /// Common widget
  Widget _buildMdiBedOutlineRow(
    BuildContext context, {
    required String bedRoomText,
    required String bathRoomText,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
      CustomImageView(
          imagePath: ImageConstant.imgMdiBedOutline,
          height: 25.adaptSize,
          width: 25.adaptSize,
          margin: EdgeInsets.only(top: 3.v)),
      Padding(
          padding: EdgeInsets.only(left: 4.h, top: 8.v),
          child: Text(bedRoomText,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelLarge!
                  .copyWith(color: appTheme.gray800))),
      CustomImageView(
          imagePath: ImageConstant.imgCilBath,
          height: 25.adaptSize,
          width: 25.adaptSize,
          margin: EdgeInsets.only(left: 14.h, bottom: 3.v)),
      Padding(
          padding: EdgeInsets.only(left: 5.h, top: 9.v),
          child: Text(bathRoomText,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelLarge!
                  .copyWith(color: appTheme.gray800)))
    ]);
  }

  /// Common widget
  Widget _buildLaptopDellRow(
    BuildContext context, {
    required String laptopDellText,
    required String yrText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(laptopDellText,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleSmallOnPrimarySemiBold
                  .copyWith(color: theme.colorScheme.onPrimary))),
      SizedBox(
          height: 20.v,
          width: 117.h,
          child: Stack(alignment: Alignment.bottomLeft, children: [
            Align(
                alignment: Alignment.centerRight,
                child: Text(yrText,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumInterPrimary
                        .copyWith(color: theme.colorScheme.primary))),
            CustomImageView(
                imagePath: ImageConstant.imgMdiNaira,
                height: 18.adaptSize,
                width: 18.adaptSize,
                alignment: Alignment.bottomLeft)
          ]))
    ]);
  }

  /// Common widget
  Widget _buildTwenty1(
    BuildContext context, {
    required String textMessage,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgIconsaxBoldLocation,
          height: 20.v,
          width: 21.h),
      Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Text(textMessage,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall!
                  .copyWith(color: appTheme.gray40002)))
    ]);
  }

  /// Common widget
  Widget _buildPsRamRow(
    BuildContext context, {
    required String fileSizeLabel,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgPsRam, height: 25.v, width: 28.h),
          Padding(
              padding: EdgeInsets.only(left: 4.h, top: 3.v, bottom: 4.v),
              child: Text(fileSizeLabel,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: appTheme.gray800)))
        ]);
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

  /// Navigates to the callToActionOneScreen when the action is triggered.
  onTapBtnIconsaxOutline(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.callToActionOneScreen,
    );
  }

  /// Navigates to the rideScreen when the action is triggered.
  onTapRide(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rideScreen,
    );
  }

  /// Navigates to the callToActionThreeScreen when the action is triggered.
  onTapTwentyTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.callToActionThreeScreen,
    );
  }
}
