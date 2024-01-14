import 'bloc/card_bloc.dart';
import 'models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CardBloc>(
        create: (context) => CardBloc(CardState(cardModelObj: CardModel()))
          ..add(CardInitialEvent()),
        child: CardScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CardBloc, CardState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 31.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeftGray800,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                  onTap: () {
                                    onTapImgArrowLeft(context);
                                  }),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 17.h, bottom: 2.v),
                                  child: Text("lbl_add_card".tr,
                                      style: CustomTextStyles
                                          .titleLargeBluegray900))
                            ])),
                        SizedBox(height: 22.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("lbl_debit_card".tr,
                                style: CustomTextStyles.titleLargeOnPrimary)),
                        SizedBox(height: 18.v),
                        _buildCardDetails(context),
                        SizedBox(height: 29.v),
                        _buildFullNameDetails(context),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: _buildAddCardButton(context)));
    });
  }

  /// Section Widget
  Widget _buildCardDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text("lbl_card_number".tr,
                  style: CustomTextStyles.titleMediumNunito_1)),
          SizedBox(height: 7.v),
          Container(
              width: 347.h,
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v),
              decoration: AppDecoration.outlinePrimary3
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Text("msg_0000_0000_0000_0000".tr,
                  style: CustomTextStyles.titleMediumNunitoGray40002ExtraBold))
        ]));
  }

  /// Section Widget
  Widget _buildFullNameDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v, right: 6.h),
              child: _buildCvvDetails(context)),
          Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: _buildCvvDetails(context))
        ]));
  }

  /// Section Widget
  Widget _buildAddCardButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_add_card".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 58.v));
  }

  /// Common widget
  Widget _buildCvvDetails(BuildContext context) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text("lbl_cvv".tr,
                      style: CustomTextStyles.titleMediumNunito_1)),
              SizedBox(height: 7.v),
              Container(
                  width: 168.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 18.v),
                  decoration: AppDecoration.outlinePrimary3
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Text("lbl_000".tr,
                      style:
                          CustomTextStyles.titleMediumNunitoGray40002ExtraBold))
            ])));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
