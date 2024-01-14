import 'bloc/confirm_reset_one_bloc.dart';
import 'models/confirm_reset_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';
import 'package:rent24/widgets/custom_text_form_field.dart';

class ConfirmResetOneScreen extends StatelessWidget {
  const ConfirmResetOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ConfirmResetOneBloc>(
        create: (context) => ConfirmResetOneBloc(ConfirmResetOneState(
            confirmResetOneModelObj: ConfirmResetOneModel()))
          ..add(ConfirmResetOneInitialEvent()),
        child: ConfirmResetOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 55.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 91.v),
                  Container(
                      height: 116.adaptSize,
                      width: 116.adaptSize,
                      padding: EdgeInsets.all(18.h),
                      decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgIconsaxBulkPasswordcheck,
                          height: 80.adaptSize,
                          width: 80.adaptSize,
                          alignment: Alignment.center)),
                  SizedBox(height: 29.v),
                  Text("msg_check_your_email".tr,
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 15.v),
                  Text("msg_we_have_sent_you2".tr,
                      style: CustomTextStyles.titleMediumNunito),
                  SizedBox(height: 47.v),
                  BlocSelector<ConfirmResetOneBloc, ConfirmResetOneState,
                          TextEditingController?>(
                      selector: (state) => state.enterCodeController,
                      builder: (context, enterCodeController) {
                        return CustomTextFormField(
                            controller: enterCodeController,
                            hintText: "lbl_enter_code".tr,
                            textInputAction: TextInputAction.done);
                      }),
                  SizedBox(height: 35.v),
                  CustomElevatedButton(
                      text: "lbl_verify".tr,
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      onPressed: () {
                        onTapVerify(context);
                      }),
                  Spacer(),
                  Container(
                      width: 328.h,
                      margin: EdgeInsets.symmetric(horizontal: 11.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_did_not_recieve2".tr,
                                style:
                                    CustomTextStyles.titleSmallNunitoGray80001),
                            TextSpan(
                                text: "lbl_click_to_resend".tr,
                                style: CustomTextStyles
                                    .titleSmallNunitoPrimaryBold)
                          ]),
                          textAlign: TextAlign.center))
                ]))));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }
}
