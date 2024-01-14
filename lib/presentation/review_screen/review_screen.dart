import 'bloc/review_bloc.dart';
import 'models/review_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_outlined_button.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReviewBloc>(
        create: (context) =>
            ReviewBloc(ReviewState(reviewModelObj: ReviewModel()))
              ..add(ReviewInitialEvent()),
        child: ReviewScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ReviewBloc, ReviewState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 9.h, vertical: 22.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 13.v),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
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
                                      EdgeInsets.only(left: 21.h, top: 2.v),
                                  child: Text("msg_5_1_115_reviews".tr,
                                      style: CustomTextStyles
                                          .headlineSmallSansationOnPrimary))
                            ])),
                        SizedBox(height: 24.v),
                        _buildFrameFourteen(context),
                        SizedBox(height: 37.v),
                        _buildFive(context),
                        SizedBox(height: 11.v),
                        Container(
                            width: 313.h,
                            margin: EdgeInsets.only(left: 22.h, right: 36.h),
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleSmallNunitoGray800
                                    .copyWith(height: 1.47))),
                        SizedBox(height: 11.v),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: _buildLocation(context,
                                label112: "lbl_112".tr,
                                durationLabel: "lbl_6_days_ago".tr)),
                        SizedBox(height: 21.v),
                        _buildFour(context),
                        SizedBox(height: 11.v),
                        Container(
                            width: 313.h,
                            margin: EdgeInsets.only(left: 22.h, right: 36.h),
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleSmallNunitoGray800
                                    .copyWith(height: 1.47))),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(left: 22.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant
                                      .imgMdiCardsHeartOutlineDeepPurpleA200,
                                  height: 25.adaptSize,
                                  width: 25.adaptSize),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 9.h, bottom: 3.v),
                                  child: Text("lbl_112".tr,
                                      style: CustomTextStyles
                                          .titleSmallNunitoBlack900Bold15)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 21.h, bottom: 3.v),
                                  child: Text("lbl_6_days_ago".tr,
                                      style: CustomTextStyles
                                          .titleSmallNunitoOnPrimaryContainerBold))
                            ])),
                        SizedBox(height: 18.v),
                        _buildFiveButton2(context),
                        SizedBox(height: 11.v),
                        Container(
                            width: 313.h,
                            margin: EdgeInsets.only(left: 22.h, right: 36.h),
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleSmallNunitoGray800
                                    .copyWith(height: 1.47))),
                        SizedBox(height: 11.v),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: _buildLocation(context,
                                label112: "lbl_112".tr,
                                durationLabel: "lbl_6_days_ago".tr)),
                        SizedBox(height: 21.v),
                        _buildThree(context),
                        SizedBox(height: 11.v),
                        Container(
                            width: 313.h,
                            margin: EdgeInsets.only(left: 22.h, right: 36.h),
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleSmallNunitoGray800
                                    .copyWith(height: 1.47))),
                        SizedBox(height: 11.v),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: _buildLocation(context,
                                label112: "lbl_112".tr,
                                durationLabel: "lbl_6_days_ago".tr))
                      ]))));
    });
  }

  /// Section Widget
  Widget _buildFrameFourteen(BuildContext context) {
    return Container(
        height: 40.v,
        width: 360.h,
        margin: EdgeInsets.only(left: 12.h),
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        SizedBox(
                            height: 40.v,
                            width: 91.h,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 40.v,
                                          width: 91.h,
                                          decoration: BoxDecoration(
                                              color: theme.colorScheme.primary,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      20.h)))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 14.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgIcRoundStar,
                                                height: 25.adaptSize,
                                                width: 25.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4.h,
                                                    top: 2.v,
                                                    bottom: 2.v),
                                                child: Text("lbl_all".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumSansationWhiteA700))
                                          ])))
                                ])),
                        Container(
                            height: 40.v,
                            width: 91.h,
                            margin: EdgeInsets.only(left: 233.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.h),
                                border: Border.all(
                                    color: theme.colorScheme.primary,
                                    width: 2.h)))
                      ])))),
          Align(
              alignment: Alignment.centerRight,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 108.h),
                  child: IntrinsicWidth(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        SizedBox(
                            height: 40.v,
                            width: 91.h,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 40.v,
                                          width: 91.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.h),
                                              border: Border.all(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  width: 2.h)))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 11.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgIcRoundStarBlack900,
                                                height: 25.adaptSize,
                                                width: 25.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 11.h,
                                                    top: 2.v,
                                                    bottom: 2.v),
                                                child: Text("lbl_5".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumSansationBlack900))
                                          ])))
                                ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 172.h, top: 10.v, bottom: 11.v),
                            child: Text("lbl_3".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .titleMediumSansationBlack900))
                      ])))),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  margin: EdgeInsets.only(left: 216.h, right: 53.h),
                  padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
                  decoration: AppDecoration.outlinePrimary
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIcRoundStarBlack900,
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 11.h, top: 2.v, bottom: 3.v),
                            child: Text("lbl_4".tr,
                                style: CustomTextStyles
                                    .titleMediumSansationBlack900))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgIcRoundStarBlack900,
              height: 25.adaptSize,
              width: 25.adaptSize,
              alignment: Alignment.centerRight)
        ]));
  }

  /// Section Widget
  Widget _buildFiveButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 59.h,
        text: "lbl_5".tr,
        margin: EdgeInsets.symmetric(vertical: 12.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIcRoundStarBlack900,
                height: 16.adaptSize,
                width: 16.adaptSize)));
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 22.h, right: 27.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse30,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(25.h)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 17.v, bottom: 15.v),
                  child: Text("lbl_mary_john".tr,
                      style: CustomTextStyles.titleSmallSansationBlack900)),
              Spacer(),
              _buildFiveButton(context)
            ])));
  }

  /// Section Widget
  Widget _buildFourButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 59.h,
        text: "lbl_4".tr,
        margin: EdgeInsets.symmetric(vertical: 12.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 7.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIcRoundStarBlack900,
                height: 16.adaptSize,
                width: 16.adaptSize)));
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 22.h, right: 27.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse3050x50,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(25.h)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 17.v, bottom: 15.v),
                  child: Text("lbl_blessing_doe".tr,
                      style: CustomTextStyles.titleSmallSansationBlack900)),
              Spacer(),
              _buildFourButton(context)
            ])));
  }

  /// Section Widget
  Widget _buildFiveButton1(BuildContext context) {
    return CustomOutlinedButton(
        width: 59.h,
        text: "lbl_5".tr,
        margin: EdgeInsets.symmetric(vertical: 12.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIcRoundStarBlack900,
                height: 16.adaptSize,
                width: 16.adaptSize)));
  }

  /// Section Widget
  Widget _buildFiveButton2(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 22.h, right: 27.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse301,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(25.h)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 17.v, bottom: 15.v),
                  child: Text("lbl_mary_patrick".tr,
                      style: CustomTextStyles.titleSmallSansationBlack900)),
              Spacer(),
              _buildFiveButton1(context)
            ])));
  }

  /// Section Widget
  Widget _buildThreeButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 59.h,
        text: "lbl_3".tr,
        margin: EdgeInsets.symmetric(vertical: 12.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIcRoundStarBlack900,
                height: 16.adaptSize,
                width: 16.adaptSize)));
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 22.h, right: 27.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse302,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(25.h)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 16.v, bottom: 16.v),
                  child: Text("lbl_doe_john".tr,
                      style: CustomTextStyles.titleSmallSansationBlack900)),
              Spacer(),
              _buildThreeButton(context)
            ])));
  }

  /// Common widget
  Widget _buildLocation(
    BuildContext context, {
    required String label112,
    required String durationLabel,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgLocation, height: 19.v, width: 20.h),
      Padding(
          padding: EdgeInsets.only(left: 11.h),
          child: Text(label112,
              style: CustomTextStyles.titleSmallNunitoBlack900Bold15
                  .copyWith(color: appTheme.black900))),
      Padding(
          padding: EdgeInsets.only(left: 21.h),
          child: Text(durationLabel,
              style: CustomTextStyles.titleSmallNunitoOnPrimaryContainerBold
                  .copyWith(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1))))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
