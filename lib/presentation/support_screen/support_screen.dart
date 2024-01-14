import 'bloc/support_bloc.dart';
import 'models/support_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SupportBloc>(
        create: (context) =>
            SupportBloc(SupportState(supportModelObj: SupportModel()))
              ..add(SupportInitialEvent()),
        child: SupportScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SupportBloc, SupportState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildArrowLeftSection(context),
                        SizedBox(height: 36.v),
                        _buildHelloHowCanWeSection(context),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: _buildTwentyEightSection(context)));
    });
  }

  /// Section Widget
  Widget _buildArrowLeftSection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 39.v),
        decoration: AppDecoration.fillPrimary1,
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeftWhiteA700,
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(top: 11.v),
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 80.h, top: 13.v),
              child: Text("lbl_support_chat".tr,
                  style: theme.textTheme.titleLarge))
        ]));
  }

  /// Section Widget
  Widget _buildHelloHowCanWeSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14.h, right: 61.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse12,
              height: 34.adaptSize,
              width: 34.adaptSize,
              radius: BorderRadius.circular(17.h),
              margin: EdgeInsets.only(top: 17.v, bottom: 18.v)),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 15.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v),
                  decoration: AppDecoration.outlinePrimary1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 12.v),
                        Text("msg_hello_how_can_we".tr,
                            style: CustomTextStyles.titleSmallSansationGray800),
                        SizedBox(height: 6.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("lbl_9_52pm".tr,
                                style: CustomTextStyles.labelLargeInterGray400))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildTwentyEightSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 40.h, right: 37.h, bottom: 49.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder35),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGoogle,
                  height: 30.adaptSize,
                  width: 30.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 19.h, top: 4.v),
                  child: Text("lbl_message".tr,
                      style: CustomTextStyles.titleMediumNunitoGray40002)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgIconsaxLinearSend,
                  height: 30.adaptSize,
                  width: 30.adaptSize)
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
