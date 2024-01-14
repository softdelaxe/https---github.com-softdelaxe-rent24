import 'bloc/call_to_action_two_bloc.dart';
import 'models/call_to_action_two_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';

class CallToActionTwoScreen extends StatelessWidget {
  const CallToActionTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CallToActionTwoBloc>(
        create: (context) => CallToActionTwoBloc(CallToActionTwoState(
            callToActionTwoModelObj: CallToActionTwoModel()))
          ..add(CallToActionTwoInitialEvent()),
        child: CallToActionTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CallToActionTwoBloc, CallToActionTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.h, vertical: 22.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 146.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeftGray800,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                  onTap: () {
                                    onTapImgArrowLeft(context);
                                  }),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 29.h, bottom: 3.v),
                                  child: Text("lbl_back".tr,
                                      style: CustomTextStyles
                                          .titleLargeBluegray900)),
                              Spacer(),
                              Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Text("lbl_filter".tr,
                                      style: theme.textTheme.titleLarge))
                            ])),
                        SizedBox(height: 11.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("msg_fill_in_the_needed".tr,
                                style: CustomTextStyles.titleMediumNunito)),
                        SizedBox(height: 23.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("lbl_duration".tr,
                                style: CustomTextStyles
                                    .titleMediumNunitoBlack900)),
                        SizedBox(height: 9.v),
                        _buildCallToActionTwoRow(context),
                        SizedBox(height: 19.v),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text("lbl_actual_date".tr,
                                style: CustomTextStyles
                                    .titleMediumNunitoBlack900)),
                        SizedBox(height: 8.v),
                        _buildTwentyFourRow(context),
                        SizedBox(height: 20.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("lbl_price_n1_000".tr,
                                style: CustomTextStyles
                                    .titleMediumNunitoGray80001)),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: _buildPayNowButton(context)));
    });
  }

  /// Section Widget
  Widget _buildCallToActionTwoRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 4.h, right: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 13.v),
        decoration: AppDecoration.fillGray10003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 4.v),
              child: Text("lbl_1_day".tr,
                  style: CustomTextStyles.titleMediumNunitoGray600)),
          CustomImageView(
              imagePath: ImageConstant.imgIconsaxLinearArrowdown2,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 2.v))
        ]));
  }

  /// Section Widget
  Widget _buildTwentyFourRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h, right: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 13.v),
        decoration: AppDecoration.fillGray10003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 5.h, top: 4.v),
              child: Text("lbl_1_day".tr,
                  style: CustomTextStyles.titleMediumNunitoGray600)),
          CustomImageView(
              imagePath: ImageConstant.imgBiCalendarDate,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(top: 1.v))
        ]));
  }

  /// Section Widget
  Widget _buildPayNowButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_pay_now".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 36.v));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
