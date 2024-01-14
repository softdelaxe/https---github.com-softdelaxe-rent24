import 'bloc/reset_password_bloc.dart';
import 'models/reset_password_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordBloc>(
        create: (context) => ResetPasswordBloc(
            ResetPasswordState(resetPasswordModelObj: ResetPasswordModel()))
          ..add(ResetPasswordInitialEvent()),
        child: ResetPasswordScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 45.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowLeftGray800,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 29.h, bottom: 2.v),
                              child: Text("lbl_back".tr,
                                  style:
                                      CustomTextStyles.titleLargeBluegray900))
                        ]),
                        SizedBox(height: 24.v),
                        Text("msg_change_new_password".tr,
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 20.v),
                        Container(
                            width: 334.h,
                            margin: EdgeInsets.only(right: 15.h),
                            child: Text("msg_your_new_password".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleMediumNunito)),
                        SizedBox(height: 28.v),
                        _buildTen(context),
                        SizedBox(height: 22.v),
                        _buildTen(context),
                        SizedBox(height: 40.v),
                        CustomElevatedButton(
                            text: "lbl_reset_password".tr,
                            buttonStyle: CustomButtonStyles.fillPrimary,
                            onPressed: () {
                              onTapResetPassword(context);
                            }),
                        SizedBox(height: 5.v)
                      ]))));
    });
  }

  /// Common widget
  Widget _buildTen(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 15.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMaterialSymbolsLockOutline,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(bottom: 5.v)),
          Padding(
              padding: EdgeInsets.only(left: 18.h, top: 5.v, bottom: 4.v),
              child: Text("msg_confirm_password".tr,
                  style: theme.textTheme.titleMedium))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapResetPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
