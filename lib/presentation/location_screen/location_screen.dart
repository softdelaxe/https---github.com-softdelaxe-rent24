import 'bloc/location_bloc.dart';
import 'models/location_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';
import 'package:rent24/widgets/custom_icon_button.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LocationBloc>(
        create: (context) =>
            LocationBloc(LocationState(locationModelObj: LocationModel()))
              ..add(LocationInitialEvent()),
        child: LocationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<LocationBloc, LocationState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  height: 804.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle51,
                        height: 910.v,
                        width: 390.h,
                        alignment: Alignment.bottomCenter),
                    Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                            child: SizedBox(
                                height: 804.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  36.h, 30.v, 29.h, 30.v),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 293.v),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomIconButton(
                                                                  height: 31
                                                                      .adaptSize,
                                                                  width: 31
                                                                      .adaptSize,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(6
                                                                              .h),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgFluentVehicleCar16Regular)),
                                                              SizedBox(
                                                                  height:
                                                                      388.v),
                                                              CustomIconButton(
                                                                  height: 31
                                                                      .adaptSize,
                                                                  width: 31
                                                                      .adaptSize,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(6
                                                                              .h),
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgJamCar))
                                                            ])),
                                                    Spacer(flex: 67),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 82.v),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomIconButton(
                                                                  height: 31
                                                                      .adaptSize,
                                                                  width: 31
                                                                      .adaptSize,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(6
                                                                              .h),
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEvaCarOutline)),
                                                              SizedBox(
                                                                  height:
                                                                      599.v),
                                                              CustomIconButton(
                                                                  height: 31
                                                                      .adaptSize,
                                                                  width: 31
                                                                      .adaptSize,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(6
                                                                              .h),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgFluentVehicleCar16Regular))
                                                            ])),
                                                    Spacer(flex: 32),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 75.v,
                                                                bottom: 638.v),
                                                        child: CustomIconButton(
                                                            height:
                                                                31.adaptSize,
                                                            width: 31.adaptSize,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    6.h),
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgFluentVehicleCar16Regular))),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 27.h,
                                                                top: 515.v,
                                                                bottom: 198.v),
                                                        child: CustomIconButton(
                                                            height:
                                                                31.adaptSize,
                                                            width: 31.adaptSize,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    6.h),
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgFluentVehicleCar16Regular)))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                _buildJamCarRow(context),
                                                SizedBox(height: 22.v),
                                                _buildNinetyColumn(context),
                                                SizedBox(height: 337.v),
                                                _buildNinetyOneColumn(context)
                                              ])),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              height: 16.v,
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                  color: appTheme.whiteA700)))
                                    ]))))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildJamCarRow(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 19.v),
        decoration: AppDecoration.fillWhiteA700,
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgIconsaxBulkElementplus,
              height: 28.adaptSize,
              width: 28.adaptSize,
              margin: EdgeInsets.only(top: 13.v)),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 13.v, bottom: 4.v),
              child: Text("lbl_location2".tr,
                  style: CustomTextStyles.titleLargeSansationBlack900))
        ]));
  }

  /// Section Widget
  Widget _buildNinetyColumn(BuildContext context) {
    return Container(
        width: 355.h,
        margin: EdgeInsets.symmetric(horizontal: 17.h),
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 11.v),
        decoration: AppDecoration.outlineGray8002601
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(right: 56.h),
                  child: Row(children: [
                    Container(
                        margin: EdgeInsets.only(top: 4.v, bottom: 1.v),
                        padding: EdgeInsets.all(2.h),
                        decoration: AppDecoration.outlinePrimary5.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder15),
                        child: Container(
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(10.h)))),
                    Container(
                        height: 36.v,
                        width: 232.h,
                        margin: EdgeInsets.only(left: 11.h),
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("msg_no_5_umushi_street".tr,
                                  style: theme.textTheme.bodyLarge)),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_pickup_location".tr,
                                      style: CustomTextStyles
                                          .titleSmallSansation)))
                        ]))
                  ])),
              SizedBox(height: 3.v),
              Row(children: [
                Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 12.h),
                          child: SizedBox(
                              height: 25.v,
                              child: VerticalDivider(
                                  width: 2.h, thickness: 2.v)))),
                  SizedBox(height: 2.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgIconsaxBulkLocationBlack900,
                      height: 30.adaptSize,
                      width: 30.adaptSize)
                ]),
                Padding(
                    padding: EdgeInsets.only(left: 6.h, top: 17.v, bottom: 2.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("lbl_destination".tr,
                                  style: CustomTextStyles.titleSmallSansation)),
                          Text("msg_zike_avenue_term".tr,
                              style: theme.textTheme.bodyLarge)
                        ]))
              ])
            ]));
  }

  /// Section Widget
  Widget _buildNinetyOneColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 24.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "msg_estimate_pick_up2".tr,
                        style: CustomTextStyles.titleLargeBlack900SemiBold),
                    TextSpan(
                        text: "lbl_4mins".tr,
                        style: CustomTextStyles.titleLargeBlack900)
                  ]),
                  textAlign: TextAlign.left),
              SizedBox(height: 8.v),
              Text("lbl_n500_00".tr,
                  style: CustomTextStyles.headlineSmallExtraBold),
              SizedBox(height: 2.v),
              Text("msg_fare_estimate_min".tr,
                  style: CustomTextStyles.titleLargeBlack900SemiBold_1),
              SizedBox(height: 10.v),
              CustomElevatedButton(
                  text: "lbl_continue".tr,
                  onPressed: () {
                    onTapContinue(context);
                  })
            ]));
  }

  /// Navigates to the selectCabTwoScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.selectCabTwoScreen,
    );
  }
}
