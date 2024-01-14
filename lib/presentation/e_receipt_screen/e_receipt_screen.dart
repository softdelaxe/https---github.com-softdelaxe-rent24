import 'bloc/e_receipt_bloc.dart';
import 'models/e_receipt_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

class EReceiptScreen extends StatelessWidget {
  const EReceiptScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<EReceiptBloc>(
        create: (context) =>
            EReceiptBloc(EReceiptState(eReceiptModelObj: EReceiptModel()))
              ..add(EReceiptInitialEvent()),
        child: EReceiptScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<EReceiptBloc, EReceiptState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 37.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildArrowLeftRow(context),
                    SizedBox(height: 40.v),
                    _buildActualAmountColumn(context),
                    SizedBox(height: 36.v),
                    _buildPaymentMethodColumn(context),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 3.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeftBlack900,
              height: 30.adaptSize,
              width: 30.adaptSize,
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 20.h, top: 4.v, bottom: 3.v),
              child: Text("lbl_e_recepit".tr,
                  style: CustomTextStyles.titleLargeUbuntuBlack900)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgPhDotsThreeCircleVertical,
              height: 30.adaptSize,
              width: 30.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildActualAmountColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
        decoration: AppDecoration.outlineSecondaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_actual_amount".tr,
                            style: CustomTextStyles.bodyLargeUbuntu),
                        Text("lbl_200".tr,
                            style: CustomTextStyles
                                .titleMediumRalewayBlack900SemiBold)
                      ])),
              SizedBox(height: 19.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_10_commission".tr,
                            style: CustomTextStyles.bodyLargeUbuntu),
                        Text("lbl_20".tr,
                            style: CustomTextStyles
                                .titleMediumRalewayBlack900SemiBold)
                      ])),
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: _buildDateRow(context,
                      dateLabel: "lbl_vat".tr, priceLabel: "lbl_1_00".tr)),
              SizedBox(height: 20.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 1.h, right: 12.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_delivery".tr,
                                style: CustomTextStyles.bodyLargeUbuntu),
                            Text("lbl2".tr,
                                style: CustomTextStyles
                                    .titleMediumRalewayBlack900SemiBold)
                          ]))),
              SizedBox(height: 41.v),
              Divider(color: appTheme.gray20003, indent: 4.h, endIndent: 6.h),
              SizedBox(height: 19.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h, right: 6.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_total".tr,
                            style: CustomTextStyles.titleMediumRalewayBlack900),
                        Text("lbl_201".tr,
                            style: CustomTextStyles
                                .titleMediumRalewayBlack900SemiBold)
                      ])),
              SizedBox(height: 2.v)
            ]));
  }

  /// Section Widget
  Widget _buildPaymentMethodColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 21.v),
        decoration: AppDecoration.outlineSecondaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, right: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_payment_method".tr,
                            style: theme.textTheme.bodyMedium),
                        Text("lbl_card".tr,
                            style: CustomTextStyles.titleSmallRalewayBlack900)
                      ])),
              SizedBox(height: 24.v),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, right: 2.h),
                  child: _buildDateRow(context,
                      dateLabel: "lbl_date".tr,
                      priceLabel: "msg_jan_15_2023_10_00am".tr)),
              SizedBox(height: 24.v),
              Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("lbl_transaction_id".tr,
                            style: theme.textTheme.bodyMedium),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text("lbl_ske98373l33".tr,
                                style: CustomTextStyles
                                    .titleSmallRalewayBlack900)),
                        CustomImageView(
                            imagePath: ImageConstant.imgTablerClipboard,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(left: 5.h))
                      ])),
              SizedBox(height: 23.v),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, right: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_status".tr,
                            style: theme.textTheme.bodyMedium),
                        Text("lbl_paid".tr,
                            style: CustomTextStyles.titleSmallRalewayBlack900)
                      ]))
            ]));
  }

  /// Common widget
  Widget _buildDateRow(
    BuildContext context, {
    required String dateLabel,
    required String priceLabel,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(dateLabel,
          style: CustomTextStyles.bodyMediumRaleway
              .copyWith(color: appTheme.black900)),
      Text(priceLabel,
          style: CustomTextStyles.titleSmallRalewayBlack900
              .copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
