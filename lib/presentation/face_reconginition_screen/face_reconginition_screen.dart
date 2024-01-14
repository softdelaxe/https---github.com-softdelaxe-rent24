import 'bloc/face_reconginition_bloc.dart';
import 'models/face_reconginition_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';

class FaceReconginitionScreen extends StatelessWidget {
  const FaceReconginitionScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FaceReconginitionBloc>(
        create: (context) => FaceReconginitionBloc(FaceReconginitionState(
            faceReconginitionModelObj: FaceReconginitionModel()))
          ..add(FaceReconginitionInitialEvent()),
        child: FaceReconginitionScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<FaceReconginitionBloc, FaceReconginitionState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.h, vertical: 22.v),
                  child: Column(children: [
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
                              padding: EdgeInsets.only(left: 25.h),
                              child: Text("msg_face_recognition".tr,
                                  style:
                                      CustomTextStyles.titleLargeBluegray900))
                        ])),
                    SizedBox(height: 41.v),
                    Text("lbl_take_a_selfie".tr,
                        style: CustomTextStyles.titleLargeOnPrimary),
                    SizedBox(height: 28.v),
                    Container(
                        width: 295.h,
                        margin: EdgeInsets.only(left: 26.h, right: 27.h),
                        child: Text("msg_we_will_use_your".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style:
                                CustomTextStyles.titleMediumNunitoGray4000216)),
                    SizedBox(height: 20.v),
                    _buildGoodLightAndLookStrightAndLoremIpsumDolor2(context),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildTakeSelfie(context)));
    });
  }

  /// Section Widget
  Widget _buildGoodLightAndLookStrightAndLoremIpsumDolor2(
      BuildContext context) {
    return Container(
        width: 340.h,
        margin: EdgeInsets.symmetric(horizontal: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 25.v),
        decoration: AppDecoration.outlineGrayF
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 161.adaptSize,
                      width: 161.adaptSize,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 124.adaptSize,
                                width: 124.adaptSize,
                                padding: EdgeInsets.all(7.h),
                                decoration: AppDecoration.outlinePrimary4
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder62),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgEllipse16,
                                    height: 110.adaptSize,
                                    width: 110.adaptSize,
                                    radius: BorderRadius.circular(55.h),
                                    alignment: Alignment.center))),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 161.v,
                                child: VerticalDivider(
                                    width: 1.h, thickness: 1.v))),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(width: 161.h, child: Divider()))
                      ]))),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(right: 13.h),
                  child: _buildGoodLightAndLookStrightAndLoremIpsumDolor(
                      context,
                      userImage: "lbl_1".tr,
                      lookStrightText: "lbl_good_light".tr,
                      loremIpsumDolorText: "msg_lorem_ipsum_dolor3".tr)),
              SizedBox(height: 9.v),
              Padding(
                  padding: EdgeInsets.only(right: 13.h),
                  child: _buildGoodLightAndLookStrightAndLoremIpsumDolor(
                      context,
                      userImage: "lbl_2".tr,
                      lookStrightText: "lbl_look_stright".tr,
                      loremIpsumDolorText: "msg_lorem_ipsum_dolor4".tr)),
              SizedBox(height: 5.v)
            ]));
  }

  /// Section Widget
  Widget _buildTakeSelfie(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_take_selfie".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 46.v),
        onPressed: () {
          onTapTakeSelfie(context);
        });
  }

  /// Common widget
  Widget _buildGoodLightAndLookStrightAndLoremIpsumDolor(
    BuildContext context, {
    required String userImage,
    required String lookStrightText,
    required String loremIpsumDolorText,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          width: 35.adaptSize,
          margin: EdgeInsets.only(bottom: 43.v),
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v),
          decoration: AppDecoration.fillPrimary1
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
          child: Text(userImage,
              style: CustomTextStyles.titleMediumSansationWhiteA700
                  .copyWith(color: appTheme.whiteA700))),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 16.h, top: 8.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(lookStrightText,
                            style: CustomTextStyles.titleMediumSansationBlack900
                                .copyWith(color: appTheme.black900))),
                    SizedBox(height: 5.v),
                    SizedBox(
                        width: 217.h,
                        child: Text(loremIpsumDolorText,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleSmallNunitoGray40003
                                .copyWith(
                                    color: appTheme.gray40003, height: 1.47)))
                  ])))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the faceScanScreen when the action is triggered.
  onTapTakeSelfie(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.faceScanScreen,
    );
  }
}
