import 'bloc/call_to_action_bloc.dart';
import 'models/call_to_action_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';
import 'package:rent24/widgets/custom_icon_button.dart';

class CallToActionScreen extends StatelessWidget {
  const CallToActionScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CallToActionBloc>(
        create: (context) => CallToActionBloc(
            CallToActionState(callToActionModelObj: CallToActionModel()))
          ..add(CallToActionInitialEvent()),
        child: CallToActionScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CallToActionBloc, CallToActionState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 21.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildFiftyEightStack(context),
                        SizedBox(height: 24.v),
                        _buildDuplexHomeRow(context),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgIconsaxBoldLocation,
                                  height: 20.v,
                                  width: 21.h),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text("msg_st_faith_eke_awka".tr,
                                      style: theme.textTheme.titleSmall))
                            ])),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconsaxBoldStar1,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize),
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconsaxBoldStar1,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(left: 2.h)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconsaxBoldStar1,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(left: 2.h)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconsaxBoldStar1,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(left: 2.h)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconsaxBoldStar1,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(left: 2.h)),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("msg_5_1_115_reviews".tr,
                                      style: CustomTextStyles
                                          .titleSmallSansationOnPrimary))
                            ])),
                        SizedBox(height: 12.v),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h, right: 47.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgMdiBedOutline,
                                      height: 25.adaptSize,
                                      width: 25.adaptSize),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 4.h, top: 4.v, bottom: 2.v),
                                      child: Text("lbl_6_bed_room".tr,
                                          style: theme.textTheme.labelLarge)),
                                  Spacer(flex: 47),
                                  Padding(
                                      padding: EdgeInsets.only(top: 5.v),
                                      child: Text("lbl_4_bath_room".tr,
                                          style: theme.textTheme.labelLarge)),
                                  Spacer(flex: 52),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 4.v, bottom: 2.v),
                                      child: Text("lbl_2500sqr".tr,
                                          style: theme.textTheme.labelLarge))
                                ])),
                        SizedBox(height: 23.v),
                        _buildJohnDoeRow(context),
                        SizedBox(height: 27.v),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text("lbl_description".tr,
                                style: CustomTextStyles.titleSmallOnPrimary)),
                        SizedBox(height: 9.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 342.h,
                                margin:
                                    EdgeInsets.only(left: 10.h, right: 12.h),
                                child: Text("msg_lorem_ipsum_dolor".tr,
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .titleSmallNunitoGray800
                                        .copyWith(height: 1.47)))),
                        SizedBox(height: 2.v)
                      ])),
              bottomNavigationBar: _buildTwentySevenColumn(context)));
    });
  }

  /// Section Widget
  Widget _buildFiftyEightStack(BuildContext context) {
    return SizedBox(
        height: 285.v,
        width: 368.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle16,
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
  Widget _buildDuplexHomeRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 10.h, right: 12.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_duplex_home".tr,
                      style: CustomTextStyles.titleMediumInterOnPrimary_1),
                  Text("lbl_1_200_00_yr".tr,
                      style: CustomTextStyles.titleMediumInterPrimary)
                ])));
  }

  /// Section Widget
  Widget _buildJohnDoeRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 10.h, right: 12.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse4,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(30.h)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 13.v, bottom: 4.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_john_doe".tr,
                            style: CustomTextStyles.titleMediumInterOnPrimary),
                        SizedBox(height: 2.v),
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
    return Container(
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 19.v),
        decoration: AppDecoration.fillWhiteA700,
        child: CustomElevatedButton(text: "lbl_rent_now".tr));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
