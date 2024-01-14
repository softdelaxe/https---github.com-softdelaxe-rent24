import 'bloc/transaction_history_bloc.dart';
import 'models/transaction_history_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_icon_button.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionHistoryBloc>(
        create: (context) => TransactionHistoryBloc(TransactionHistoryState(
            transactionHistoryModelObj: TransactionHistoryModel()))
          ..add(TransactionHistoryInitialEvent()),
        child: TransactionHistoryScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<TransactionHistoryBloc, TransactionHistoryState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 19.h, vertical: 29.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowLeftBlack900,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: Text("msg_transaction_history".tr,
                                  style: CustomTextStyles.titleLargeBlack900_1))
                        ]),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Text("msg_2022_11_15_2023_04_14".tr,
                                      style: CustomTextStyles
                                          .titleSmallNunitoBlack900Bold)),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgMaterialSymbolBlack900,
                                  height: 24.v,
                                  width: 20.h,
                                  margin: EdgeInsets.only(left: 10.h))
                            ])),
                        SizedBox(height: 39.v),
                        _buildFundingToWallet(context),
                        SizedBox(height: 19.v),
                        _buildFundingToWallet1(context),
                        SizedBox(height: 5.v)
                      ]))));
    });
  }

  /// Section Widget
  Widget _buildFundingToWallet(BuildContext context) {
    return Row(children: [
      CustomIconButton(
          height: 56.adaptSize,
          width: 56.adaptSize,
          padding: EdgeInsets.all(13.h),
          decoration: IconButtonStyleHelper.fillPrimaryTL28,
          child: CustomImageView(
              imagePath: ImageConstant.imgIconParkSolidBankTransfer)),
      Padding(
          padding: EdgeInsets.only(left: 15.h, top: 8.v, bottom: 3.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_funding_to_wallet".tr,
                style: CustomTextStyles.titleMediumNunitoBlack900),
            Text("msg_january_14_7_45".tr,
                style: CustomTextStyles.titleSmallNunitoOnPrimaryContainerBold)
          ])),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(top: 8.v, bottom: 5.v),
          child: _buildFiveHundredThousand(context,
              dynamicText1: "lbl_5_000_00".tr,
              dynamicText2: "lbl_successful".tr))
    ]);
  }

  /// Section Widget
  Widget _buildFundingToWallet1(BuildContext context) {
    return Row(children: [
      CustomIconButton(
          height: 56.adaptSize,
          width: 56.adaptSize,
          padding: EdgeInsets.all(13.h),
          decoration: IconButtonStyleHelper.fillPrimaryTL28,
          child: CustomImageView(
              imagePath: ImageConstant.imgIconParkSolidBankTransfer)),
      Container(
          height: 44.v,
          width: 140.h,
          margin: EdgeInsets.only(left: 15.h, top: 8.v, bottom: 3.v),
          child: Stack(alignment: Alignment.bottomLeft, children: [
            Align(
                alignment: Alignment.topCenter,
                child: Text("msg_funding_to_wallet".tr,
                    style: CustomTextStyles.titleMediumNunitoBlack900)),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text("msg_january_14_7_45".tr,
                    style: CustomTextStyles
                        .titleSmallNunitoOnPrimaryContainerBold))
          ])),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(top: 8.v, bottom: 5.v),
          child: _buildFiveHundredThousand(context,
              dynamicText1: "lbl_5_000_00".tr,
              dynamicText2: "lbl_successful".tr))
    ]);
  }

  /// Common widget
  Widget _buildFiveHundredThousand(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Column(children: [
      Text(dynamicText1,
          style: CustomTextStyles.titleMediumNunitoBlack900ExtraBold
              .copyWith(color: appTheme.black900)),
      Align(
          alignment: Alignment.centerRight,
          child: Text(dynamicText2,
              style: CustomTextStyles.titleSmallNunitoPrimary
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
