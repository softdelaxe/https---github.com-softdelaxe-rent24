import 'bloc/call_to_action_three_bloc.dart';
import 'models/call_to_action_three_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';
import 'package:rent24/widgets/custom_icon_button.dart';

class CallToActionThreeScreen extends StatelessWidget {
  const CallToActionThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CallToActionThreeBloc>(
        create: (context) => CallToActionThreeBloc(CallToActionThreeState(
            callToActionThreeModelObj: CallToActionThreeModel()))
          ..add(CallToActionThreeInitialEvent()),
        child: CallToActionThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CallToActionThreeBloc, CallToActionThreeState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  height: 804.v,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 11.h, top: 20.v, right: 11.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildFiftyThreeStack(context),
                                  SizedBox(height: 24.v),
                                  _buildDellInsprionRow(context),
                                  SizedBox(height: 11.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 7.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconsaxBoldLocation,
                                            height: 20.v,
                                            width: 21.h),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: Text(
                                                "msg_st_faith_eke_awka".tr,
                                                style:
                                                    theme.textTheme.titleSmall))
                                      ])),
                                  SizedBox(height: 13.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 7.h),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgUilProcessor,
                                                height: 25.adaptSize,
                                                width: 25.adaptSize,
                                                margin: EdgeInsets.only(
                                                    bottom: 3.v)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 5.h,
                                                    top: 4.v,
                                                    bottom: 5.v),
                                                child: Text("lbl_core_i5".tr,
                                                    style: theme
                                                        .textTheme.labelLarge)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgPsRam,
                                                height: 25.v,
                                                width: 28.h,
                                                margin: EdgeInsets.only(
                                                    left: 23.h, top: 3.v)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4.h,
                                                    top: 5.v,
                                                    bottom: 3.v),
                                                child: Text("lbl_16gb_ram".tr,
                                                    style: theme
                                                        .textTheme.labelLarge))
                                          ])),
                                  SizedBox(height: 19.v),
                                  _buildMaryDoeRow(context),
                                  SizedBox(height: 27.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 7.h),
                                      child: Text("lbl_description".tr,
                                          style: CustomTextStyles
                                              .titleSmallOnPrimary)),
                                  SizedBox(height: 9.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          width: 342.h,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 12.h),
                                          child: Text(
                                              "msg_lorem_ipsum_dolor".tr,
                                              maxLines: 5,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .titleSmallNunitoGray800
                                                  .copyWith(height: 1.47)))),
                                  SizedBox(height: 13.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 18.h),
                                      child: Text("lbl_gallery".tr,
                                          style: CustomTextStyles
                                              .titleSmallOnPrimary)),
                                  SizedBox(height: 21.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle17,
                                      height: 1.v,
                                      width: 77.h,
                                      margin: EdgeInsets.only(left: 11.h)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle18,
                                      height: 1.v,
                                      width: 77.h,
                                      margin: EdgeInsets.only(left: 100.h)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle19,
                                      height: 1.v,
                                      width: 77.h,
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 101.h)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle20,
                                      height: 1.v,
                                      width: 77.h,
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 11.h))
                                ]))),
                    _buildTwentySevenColumn(context)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildFiftyThreeStack(BuildContext context) {
    return SizedBox(
        height: 285.v,
        width: 368.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle16285x368,
              height: 285.v,
              width: 368.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(9.h, 14.v, 9.h, 221.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            padding: EdgeInsets.all(12.h),
                            decoration: IconButtonStyleHelper.fillBlack,
                            onTap: () {
                              onTapBtnArrowLeft(context);
                            },
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgArrowLeftWhiteA700)),
                        CustomIconButton(
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            padding: EdgeInsets.all(12.h),
                            decoration: IconButtonStyleHelper.fillBlack,
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgMdiCardsHeartOutline))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildDellInsprionRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_dell_insprion".tr,
                      style: CustomTextStyles.titleMediumInterOnPrimary_1),
                  Text("lbl_1_200_00_yr".tr,
                      style: CustomTextStyles.titleMediumInterPrimary)
                ])));
  }

  /// Section Widget
  Widget _buildMaryDoeRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 10.h, right: 12.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse460x60,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(30.h)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 15.v, bottom: 4.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_mary_doe".tr,
                            style: CustomTextStyles.titleMediumInterOnPrimary),
                        Text("lbl_owner".tr,
                            style:
                                CustomTextStyles.titleSmallOnPrimaryContainer)
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.v),
                  child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      decoration: IconButtonStyleHelper.outlineBlack,
                      child: CustomImageView(
                          imagePath:
                              ImageConstant.imgMaterialSymbolsCallOutline))),
              Padding(
                  padding: EdgeInsets.only(left: 22.h, top: 10.v, bottom: 10.v),
                  child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      decoration: IconButtonStyleHelper.outlineBlack,
                      child: CustomImageView(
                          imagePath:
                              ImageConstant.imgMaterialSymbolWhiteA70040x40)))
            ])));
  }

  /// Section Widget
  Widget _buildTwentySevenColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
            onTap: () {
              onTapTwentySevenColumn(context);
            },
            child: Container(
                margin: EdgeInsets.only(right: 1.h),
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 18.v),
                decoration: AppDecoration.fillWhiteA700,
                child: CustomElevatedButton(text: "lbl_rent_now".tr))));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the callToActionTwoScreen when the action is triggered.
  onTapTwentySevenColumn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.callToActionTwoScreen,
    );
  }
}
