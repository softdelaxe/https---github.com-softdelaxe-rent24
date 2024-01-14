import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel(username: '', password: '')))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 19.h, vertical: 45.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                              padding: EdgeInsets.only(left: 23.h),
                              child: Text("lbl_log_in2".tr,
                                  style:
                                      CustomTextStyles.titleLargeBluegray900))
                        ])),
                    SizedBox(height: 16.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            width: 191.h,
                            child: Text("msg_welcome_back_please".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleMediumNunito))),
                    SizedBox(height: 44.v),
                    Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: _buildNine(context)),
                    SizedBox(height: 29.v),
                    Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: _buildNine(context)),
                    SizedBox(height: 30.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                            onTap: () {
                              onTapTxtForgotPassword(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(right: 10.h),
                                child: Text("msg_forgot_password".tr,
                                    style: CustomTextStyles
                                        .titleMediumNunitoPrimaryExtraBold)))),
                    SizedBox(height: 25.v),
                    CustomElevatedButton(
                        text: "lbl_log_in3".tr,
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        onPressed: () {
                         // onTapLogIn(context);
                          // Dispatch the login button pressed event
                          BlocProvider.of<LoginBloc>(context).add(LoginButtonPressedEvent(
                            username: "sample_username", // Replace with actual username input
                            password: "sample_password", // Replace with actual password input
                          ));
                        }),
                    SizedBox(height: 28.v),
                    GestureDetector(
                        onTap: () {
                          onTapTxtDonthaveanaccount(context);
                        },
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "msg_don_t_have_an_account2".tr,
                                  style: CustomTextStyles.titleMediumGray80001),
                              TextSpan(
                                  text: "lbl_create_account".tr,
                                  style: CustomTextStyles.titleMediumPrimary)
                            ]),
                            textAlign: TextAlign.left)),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Common widget
  Widget _buildNine(BuildContext context) {
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
              child:
                  Text("lbl_password".tr, style: theme.textTheme.titleMedium))
          // Padding(
          // //   padding: EdgeInsets.only(left: 18.h, top: 5.v, bottom: 4.v),
          //   child: Expanded(
          //     child: TextField(
          //       obscureText: true, // Indicates that this is a password field
          //       decoration: InputDecoration(
          //         labelText: "lbl_password".tr,
          //         // Add any additional decoration as needed
          //       ),
          //       onChanged: (value) {
          //         // Handle password input
          //         // You can store the entered value in a variable or use it as needed
          //       },
          //     ),
          //   ),
          // ),
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the passwordResetScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.passwordResetScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
