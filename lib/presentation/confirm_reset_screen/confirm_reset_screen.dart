import 'bloc/confirm_reset_bloc.dart';
import 'models/confirm_reset_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';

class ConfirmResetScreen extends StatelessWidget {
  const ConfirmResetScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ConfirmResetBloc>(
        create: (context) => ConfirmResetBloc(
            ConfirmResetState(confirmResetModelObj: ConfirmResetModel()))
          ..add(ConfirmResetInitialEvent()),
        child: ConfirmResetScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ConfirmResetBloc, ConfirmResetState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 31.h, vertical: 55.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 91.v),
                    Container(
                        height: 116.adaptSize,
                        width: 116.adaptSize,
                        padding: EdgeInsets.all(18.h),
                        decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: CustomImageView(
                            imagePath:
                                ImageConstant.imgIconsaxBulkPasswordcheck,
                            height: 80.adaptSize,
                            width: 80.adaptSize,
                            alignment: Alignment.center)),
                    SizedBox(height: 29.v),
                    Text("msg_check_your_email".tr,
                        style: theme.textTheme.headlineSmall),
                    SizedBox(height: 15.v),
                    Container(
                        width: 294.h,
                        margin: EdgeInsets.symmetric(horizontal: 17.h),
                        child: Text("msg_we_have_sent_you".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.titleMediumNunito)),
                    SizedBox(height: 41.v),
                    CustomElevatedButton(
                        height: 54.v,
                        width: 189.h,
                        text: "lbl_open_email_app".tr,
                        buttonStyle: CustomButtonStyles.fillPrimary),
                    SizedBox(height: 28.v),
                    GestureDetector(
                        onTap: () {
                          onTapTxtSkipILlConfirm(context);
                        },
                        child: Text("msg_skip_i_ll_confirm".tr,
                            style: CustomTextStyles.titleMediumNunito)),
                    Spacer(),
                    SizedBox(
                        width: 328.h,
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "msg_did_not_recieve2".tr,
                                  style: CustomTextStyles
                                      .titleSmallNunitoGray80001),
                              TextSpan(
                                  text: "lbl_click_to_resend".tr,
                                  style: CustomTextStyles
                                      .titleSmallNunitoPrimaryBold)
                            ]),
                            textAlign: TextAlign.center))
                  ]))));
    });
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapTxtSkipILlConfirm(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
