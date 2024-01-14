import 'bloc/password_reset_bloc.dart';
import 'models/password_reset_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PasswordResetBloc>(
        create: (context) => PasswordResetBloc(
            PasswordResetState(passwordResetModelObj: PasswordResetModel()))
          ..add(PasswordResetInitialEvent()),
        child: PasswordResetScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<PasswordResetBloc, PasswordResetState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 45.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
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
                              padding: EdgeInsets.only(left: 29.h, bottom: 2.v),
                              child: Text("lbl_back".tr,
                                  style:
                                      CustomTextStyles.titleLargeBluegray900))
                        ])),
                    SizedBox(height: 24.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_reset_password".tr,
                            style: theme.textTheme.headlineSmall)),
                    SizedBox(height: 18.v),
                    SizedBox(
                        width: 348.h,
                        child: Text("msg_enter_the_email".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleMediumNunito)),
                    SizedBox(height: 35.v),
                    _buildEmailSection(context),
                    SizedBox(height: 34.v),
                    CustomElevatedButton(
                        text: "lbl_send".tr,
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        onPressed: () {
                          onTapSend(context);
                        }),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(17.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgPhEnvelopeSimpleBold,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(top: 1.v)),
          Padding(
              padding: EdgeInsets.only(left: 18.h, top: 3.v, bottom: 2.v),
              child: Text("lbl_email".tr, style: theme.textTheme.titleMedium))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the confirmResetScreen when the action is triggered.
  onTapSend(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.confirmResetScreen,
    );
  }
}
