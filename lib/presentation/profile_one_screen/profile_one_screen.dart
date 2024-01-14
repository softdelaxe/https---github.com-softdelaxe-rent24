import 'bloc/profile_one_bloc.dart';
import 'models/profile_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

class ProfileOneScreen extends StatelessWidget {
  const ProfileOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileOneBloc>(
        create: (context) => ProfileOneBloc(
            ProfileOneState(profileOneModelObj: ProfileOneModel()))
          ..add(ProfileOneInitialEvent()),
        child: ProfileOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProfileOneBloc, ProfileOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 22.v),
                        Padding(
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
                                  padding:
                                      EdgeInsets.only(left: 30.h, bottom: 2.v),
                                  child: Text("lbl_profile".tr,
                                      style: theme.textTheme.titleLarge))
                            ])),
                        SizedBox(height: 12.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse1380x80,
                            height: 80.adaptSize,
                            width: 80.adaptSize,
                            radius: BorderRadius.circular(40.h),
                            alignment: Alignment.center),
                        SizedBox(height: 9.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 113.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("lbl_john_doe".tr,
                                          style: theme.textTheme.titleLarge),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIconsaxLinearEdit,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          margin: EdgeInsets.only(left: 13.h),
                                          onTap: () {
                                            onTapImgIconsaxLinearEdit(context);
                                          })
                                    ]))),
                        SizedBox(height: 40.v),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 25.v),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL30),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: _buildSeventyOne(context)),
                                  SizedBox(height: 7.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: _buildSeventyOne(context)),
                                  SizedBox(height: 7.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: _buildSeventyOne(context)),
                                  SizedBox(height: 7.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: _buildSeventyOne(context)),
                                  SizedBox(height: 7.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: _buildSeventyOne(context)),
                                  SizedBox(height: 7.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: _buildSeventyOne(context)),
                                  SizedBox(height: 7.v),
                                  _buildSeventySix(context),
                                  SizedBox(height: 10.v)
                                ]))
                      ]))));
    });
  }

  /// Section Widget
  Widget _buildSeventySix(BuildContext context) {
    return Container(
        width: 351.h,
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.fromLTRB(4.h, 5.v, 4.h, 3.v),
        decoration: AppDecoration.outlineGray10002,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 9.v),
              Text("lbl_address".tr, style: CustomTextStyles.titleSmallNunito)
            ]));
  }

  /// Common widget
  Widget _buildSeventyOne(BuildContext context) {
    return Container(
        width: 351.h,
        padding: EdgeInsets.fromLTRB(3.h, 6.v, 3.h, 4.v),
        decoration: AppDecoration.outlineGray10002,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 8.v),
              Text("lbl_email".tr, style: CustomTextStyles.titleSmallNunito),
              SizedBox(height: 6.v),
              Text("msg_johndoe12_gmail_com".tr,
                  style: CustomTextStyles.titleMediumNunitoOnPrimaryExtraBold)
            ]));
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
}
