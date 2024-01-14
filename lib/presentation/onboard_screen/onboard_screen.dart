import 'bloc/onboard_bloc.dart';
import 'models/onboard_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';
import 'package:rent24/widgets/custom_outlined_button.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardBloc>(
        create: (context) =>
            OnboardBloc(OnboardState(onboardModelObj: OnboardModel()))
              ..add(OnboardInitialEvent()),
        child: OnboardScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OnboardBloc, OnboardState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgOnboard),
                          fit: BoxFit.cover)),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 18.h, vertical: 49.v),
                          decoration:
                              AppDecoration.gradientPrimaryToDeepPurpleA,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 95.v),
                                SizedBox(
                                    width: 239.h,
                                    child: Text("msg_search_less_find".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.displayMedium)),
                                SizedBox(height: 21.v),
                                Text("msg_great_experience".tr,
                                    style: CustomTextStyles
                                        .titleMediumNunitoWhiteA700SemiBold),
                                SizedBox(height: 62.v),
                                CustomElevatedButton(
                                    text: "lbl_create_account".tr,
                                    buttonStyle:
                                        CustomButtonStyles.outlineBlack,
                                    onPressed: () {
                                      onTapCreateAccount(context);
                                    }),
                                SizedBox(height: 18.v),
                                CustomOutlinedButton(
                                    height: 60.v,
                                    text: "lbl_login".tr,
                                    buttonStyle:
                                        CustomButtonStyles.outlineWhiteA,
                                    buttonTextStyle: CustomTextStyles
                                        .titleLargeBluegray10002,
                                    onPressed: () {
                                      onTapLogin(context);
                                    }),
                                Spacer(),
                                Container(
                                    width: 312.h,
                                    margin: EdgeInsets.only(
                                        left: 22.h, right: 20.h),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  "msg_by_creating_account2".tr,
                                              style: CustomTextStyles
                                                  .titleSmallNunitoWhiteA700SemiBold15),
                                          TextSpan(text: " "),
                                          TextSpan(
                                              text: "lbl_term".tr,
                                              style: CustomTextStyles
                                                  .titleSmallNunitoWhiteA700ExtraBold),
                                          TextSpan(
                                              text: "lbl_s".tr,
                                              style: CustomTextStyles
                                                  .titleSmallNunitoWhiteA700SemiBold15),
                                          TextSpan(
                                              text: "lbl".tr,
                                              style: CustomTextStyles
                                                  .titleSmallNunitoWhiteA700SemiBold15),
                                          TextSpan(
                                              text: "lbl_condition".tr,
                                              style: CustomTextStyles
                                                  .titleSmallNunitoWhiteA700ExtraBold),
                                          TextSpan(
                                              text: "msg_and_agree_to_our".tr,
                                              style: CustomTextStyles
                                                  .titleSmallNunitoWhiteA700SemiBold15),
                                          TextSpan(
                                              text: "msg_privacy_policy".tr,
                                              style: CustomTextStyles
                                                  .titleSmallNunitoWhiteA700ExtraBold)
                                        ]),
                                        textAlign: TextAlign.center))
                              ]))))));
    });
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapCreateAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
