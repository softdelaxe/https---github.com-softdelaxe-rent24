import 'bloc/call_to_action_one_bloc.dart';
import 'models/call_to_action_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';
import 'package:rent24/widgets/custom_outlined_button.dart';
import 'package:rent24/widgets/custom_text_form_field.dart';

class CallToActionOneScreen extends StatelessWidget {
  const CallToActionOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CallToActionOneBloc>(
        create: (context) => CallToActionOneBloc(CallToActionOneState(
            callToActionOneModelObj: CallToActionOneModel()))
          ..add(CallToActionOneInitialEvent()),
        child: CallToActionOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFortyEight(context),
                      SizedBox(height: 42.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgMdiPropertyTagOutline,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(bottom: 1.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h, top: 2.v),
                                child: Text("lbl_property_type".tr,
                                    style: CustomTextStyles
                                        .titleMediumNunitoWhiteA700ExtraBold))
                          ])),
                      SizedBox(height: 21.v),
                      _buildAccomodationSection(context),
                      SizedBox(height: 21.v),
                      _buildLocationRow(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgFluentTableRe,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(bottom: 1.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h, top: 2.v),
                                child: Text("lbl_size_sqr_ft".tr,
                                    style: CustomTextStyles
                                        .titleMediumNunitoWhiteA700ExtraBold))
                          ])),
                      SizedBox(height: 12.v),
                      _buildFortySevenColumn(context),
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgMdiGuestRoomOutline,
                                height: 25.adaptSize,
                                width: 25.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Text("lbl_rooms".tr,
                                    style: CustomTextStyles
                                        .titleMediumNunitoWhiteA700ExtraBold))
                          ])),
                      SizedBox(height: 10.v),
                      _buildCallToActionOneStack(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildApplyButton(context)));
  }

  /// Section Widget
  Widget _buildResetButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 40.v,
        width: 64.h,
        text: "lbl_reset".tr,
        buttonStyle: CustomButtonStyles.outlineWhiteATL5,
        buttonTextStyle: CustomTextStyles.titleMediumNunitoWhiteA700,
        onPressed: () {
          onTapResetButton(context);
        });
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 17.h, right: 21.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              Spacer(flex: 57),
              Padding(
                  padding: EdgeInsets.only(top: 4.v, bottom: 7.v),
                  child:
                      Text("lbl_filter".tr, style: theme.textTheme.titleLarge)),
              Spacer(flex: 42),
              _buildResetButton(context)
            ])));
  }

  /// Section Widget
  Widget _buildAccomodationButton(BuildContext context) {
    return CustomElevatedButton(
        height: 45.v,
        width: 130.h,
        text: "lbl_accomodation".tr,
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: CustomTextStyles.titleSmallUbuntuPrimary);
  }

  /// Section Widget
  Widget _buildHotelHallButton(BuildContext context) {
    return CustomElevatedButton(
        height: 45.v,
        width: 95.h,
        text: "lbl_hotel_hall".tr,
        margin: EdgeInsets.only(left: 12.h),
        buttonStyle: CustomButtonStyles.fillWhiteATL10,
        buttonTextStyle: CustomTextStyles.titleSmallUbuntuBluegray100);
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return BlocSelector<CallToActionOneBloc, CallToActionOneState,
            TextEditingController?>(
        selector: (state) => state.editTextController,
        builder: (context, editTextController) {
          return CustomTextFormField(
              width: 115.h,
              controller: editTextController,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
              fillColor: appTheme.whiteA700.withOpacity(0.4));
        });
  }

  /// Section Widget
  Widget _buildAccomodationSection(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 17.h),
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildAccomodationButton(context),
          _buildHotelHallButton(context),
          Container(
              height: 45.v,
              width: 115.h,
              margin: EdgeInsets.only(left: 10.h),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 45.v,
                        width: 115.h,
                        decoration: BoxDecoration(
                            color: appTheme.whiteA700.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Text("lbl_event_center".tr,
                        style: CustomTextStyles.titleSmallUbuntuBluegray100))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 9.h, top: 14.v, bottom: 14.v),
              child: Text("lbl_electronics".tr,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleSmallUbuntuBluegray100)),
          _buildEditText(context)
        ])));
  }

  /// Section Widget
  Widget _buildLocationRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 17.h),
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.outlineWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(mainAxisSize: MainAxisSize.max, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIconsaxLinearSearchnormal1,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 2.v)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 1.v),
                  child: Text("lbl_location".tr,
                      style: CustomTextStyles.titleMediumNunitoGray5002))
            ])));
  }

  /// Section Widget
  Widget _buildFortySevenColumn(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 17.h, right: 14.h),
            child: Column(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGroup45,
                  height: 30.v,
                  width: 354.h),
              SizedBox(height: 11.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("lbl_0_sq_ft".tr,
                    style: CustomTextStyles.titleSmallNunitoWhiteA700),
                Padding(
                    padding: EdgeInsets.only(left: 82.h),
                    child: Text("lbl_1400_sq_ft".tr,
                        style: CustomTextStyles
                            .titleSmallNunitoWhiteA700ExtraBold15)),
                Padding(
                    padding: EdgeInsets.only(left: 66.h),
                    child: Text("lbl_3400_sq_ft".tr,
                        style: CustomTextStyles.titleSmallNunitoWhiteA700))
              ])
            ])));
  }

  /// Section Widget
  Widget _buildCallToActionOneStack(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 50.v,
            width: 370.h,
            child: Stack(alignment: Alignment.centerLeft, children: [
              Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: IntrinsicWidth(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            SizedBox(
                                height: 50.v,
                                width: 67.h,
                                child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: 50.v,
                                              width: 67.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.whiteA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.h)))),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 26.h, bottom: 11.v),
                                              child: Text("lbl_1".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeUbuntuPrimary)))
                                    ])),
                            Spacer(),
                            Container(
                                height: 50.v,
                                width: 67.h,
                                decoration: BoxDecoration(
                                    color: appTheme.whiteA700.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(5.h))),
                            Container(
                                height: 50.v,
                                width: 67.h,
                                margin: EdgeInsets.only(left: 14.h),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: 50.v,
                                              width: 67.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.whiteA700
                                                      .withOpacity(0.4),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.h)))),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 12.v),
                                              child: Text("lbl_6".tr,
                                                  textAlign: TextAlign.center,
                                                  style: CustomTextStyles
                                                      .titleLargeUbuntu)))
                                    ]))
                          ])))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: 67.h,
                      margin: EdgeInsets.only(left: 81.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 26.h, vertical: 11.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Text("lbl_2".tr,
                          style: CustomTextStyles.titleLargeUbuntu))),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      width: 67.h,
                      margin: EdgeInsets.only(right: 141.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 26.h, vertical: 11.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Text("lbl_3".tr,
                          style: CustomTextStyles.titleLargeUbuntu))),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      width: 67.h,
                      margin: EdgeInsets.only(right: 60.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 27.h, vertical: 11.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Text("lbl_4".tr,
                          style: CustomTextStyles.titleLargeUbuntu))),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 7.h, bottom: 11.v),
                      child: Text("lbl_5".tr,
                          style: CustomTextStyles.titleLargeUbuntu)))
            ])));
  }

  /// Section Widget
  Widget _buildApplyButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_apply".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 26.v),
        buttonStyle: CustomButtonStyles.outlineBlackTL5,
        buttonTextStyle: CustomTextStyles.titleLargePrimary,
        onPressed: () {
          onTapApplyButton(context);
        });
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapResetButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapApplyButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }
}
