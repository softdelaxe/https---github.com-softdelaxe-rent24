import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_icon_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 22.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Column(children: [
                      _buildProfileHeader(context),
                      SizedBox(height: 12.v),
                      SizedBox(
                          height: 80.v,
                          width: 94.h,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1380x80,
                                    height: 80.adaptSize,
                                    width: 80.adaptSize,
                                    radius: BorderRadius.circular(40.h),
                                    alignment: Alignment.centerLeft),
                                Padding(
                                    padding: EdgeInsets.only(bottom: 3.v),
                                    child: CustomIconButton(
                                        height: 35.adaptSize,
                                        width: 35.adaptSize,
                                        padding: EdgeInsets.all(7.h),
                                        decoration: IconButtonStyleHelper
                                            .outlinePrimary,
                                        alignment: Alignment.bottomRight,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconsaxLinearCamera)))
                              ])),
                      SizedBox(height: 9.v),
                      Text("lbl_john_doe".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 40.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 21.h, vertical: 33.v),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 38.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 1.h),
                                    child: _buildEmailSection(context)),
                                SizedBox(height: 14.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 1.h),
                                    child: _buildEmailSection(context)),
                                SizedBox(height: 14.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 1.h),
                                    child: _buildStateSection(context)),
                                SizedBox(height: 15.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 1.h),
                                    child: _buildStateSection(context)),
                                SizedBox(height: 16.v),
                                _buildCitySection(context)
                              ]))
                    ])))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildProfileHeader(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeftWhiteA700,
              height: 30.adaptSize,
              width: 30.adaptSize,
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 9.h, bottom: 2.v),
              child: Text("lbl_profile_edit".tr,
                  style: theme.textTheme.titleLarge)),
          Spacer(),
          GestureDetector(
              onTap: () {
                onTapTxtSave(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child:
                      Text("lbl_save".tr, style: theme.textTheme.titleLarge)))
        ]));
  }

  /// Section Widget
  Widget _buildCitySection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text("lbl_city".tr,
                  style: CustomTextStyles.titleMediumNunito_1)),
          SizedBox(height: 6.v),
          SizedBox(
              height: 65.v,
              width: 347.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 65.v,
                        width: 347.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.h),
                            border: Border.all(
                                color:
                                    theme.colorScheme.primary.withOpacity(0.3),
                                width: 3.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(24.h, 19.v, 18.h, 16.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("lbl_awka".tr,
                                  style: CustomTextStyles
                                      .titleMediumNunitoBlack900ExtraBold_1),
                              CustomImageView(
                                  imagePath: ImageConstant
                                      .imgIconsaxLinearArrowdown2Gray40002,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 3.v))
                            ])))
              ]))
        ]));
  }

  /// Common widget
  Widget _buildEmailSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text("lbl_email".tr,
              style: CustomTextStyles.titleMediumNunito_1)),
      SizedBox(height: 8.v),
      Container(
          width: 347.h,
          padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 17.v),
          decoration: AppDecoration.outlinePrimary3
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: Text("msg_johndoe12_gmail_com".tr,
              style: CustomTextStyles.titleMediumNunitoBlack900ExtraBold_1))
    ]);
  }

  /// Common widget
  Widget _buildStateSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text("lbl_state".tr,
              style: CustomTextStyles.titleMediumNunito_1)),
      SizedBox(height: 7.v),
      Container(
          padding: EdgeInsets.all(15.h),
          decoration: AppDecoration.outlinePrimary3
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(left: 6.h, top: 3.v),
                child: Text("lbl_anambra".tr,
                    style:
                        CustomTextStyles.titleMediumNunitoBlack900ExtraBold_1)),
            CustomImageView(
                imagePath: ImageConstant.imgIconsaxLinearArrowdown2Gray40002,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(top: 3.v))
          ]))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the profileOneScreen when the action is triggered.
  onTapTxtSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileOneScreen,
    );
  }
}
