import 'bloc/transaction_history_one_bloc.dart';
import 'models/transaction_history_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_icon_button.dart';

class TransactionHistoryOneScreen extends StatelessWidget {
  const TransactionHistoryOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionHistoryOneBloc>(
        create: (context) => TransactionHistoryOneBloc(
            TransactionHistoryOneState(
                transactionHistoryOneModelObj: TransactionHistoryOneModel()))
          ..add(TransactionHistoryOneInitialEvent()),
        child: TransactionHistoryOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<TransactionHistoryOneBloc, TransactionHistoryOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.h, vertical: 29.v),
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
                              padding: EdgeInsets.only(left: 21.h),
                              child: Text("lbl_renting_history".tr,
                                  style: CustomTextStyles.titleLargeBlack900_1))
                        ]),
                        SizedBox(height: 30.v),
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text("lbl_today".tr,
                                style: CustomTextStyles
                                    .titleMediumNunitoBlack900)),
                        SizedBox(height: 28.v),
                        Padding(
                            padding: EdgeInsets.only(left: 2.h, right: 1.h),
                            child: _buildIcSharpHouse(context,
                                houseRentingText: "lbl_house_renting".tr,
                                yourHouseRentingText:
                                    "msg_your_house_renting".tr)),
                        SizedBox(height: 30.v),
                        _buildCarbonScisTra(context),
                        SizedBox(height: 30.v),
                        Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Text("lbl_yesterday".tr,
                                style: CustomTextStyles
                                    .titleMediumNunitoBlack900)),
                        SizedBox(height: 28.v),
                        Padding(
                            padding: EdgeInsets.only(left: 2.h, right: 1.h),
                            child: _buildIcSharpHouse(context,
                                houseRentingText: "lbl_house_renting".tr,
                                yourHouseRentingText:
                                    "msg_your_house_renting".tr)),
                        SizedBox(height: 5.v)
                      ]))));
    });
  }

  /// Section Widget
  Widget _buildCarbonScisTra(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v),
        decoration: AppDecoration.outlineGray60026
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
        child: Row(children: [
          CustomIconButton(
              height: 68.adaptSize,
              width: 68.adaptSize,
              padding: EdgeInsets.all(19.h),
              decoration: IconButtonStyleHelper.fillPrimaryTL34,
              child:
                  CustomImageView(imagePath: ImageConstant.imgCarbonScisTra)),
          Padding(
              padding: EdgeInsets.only(left: 14.h, top: 8.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_laptop_renting".tr,
                        style: CustomTextStyles.titleMediumNunitoBlack900),
                    SizedBox(height: 3.v),
                    SizedBox(
                        width: 207.h,
                        child: Text("msg_your_laptop_renting".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleSmallUbuntu))
                  ]))
        ]));
  }

  /// Common widget
  Widget _buildIcSharpHouse(
    BuildContext context, {
    required String houseRentingText,
    required String yourHouseRentingText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 17.v),
        decoration: AppDecoration.outlineGray60026
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomIconButton(
              height: 68.adaptSize,
              width: 68.adaptSize,
              padding: EdgeInsets.all(19.h),
              decoration: IconButtonStyleHelper.fillPrimaryTL34,
              child: CustomImageView(imagePath: ImageConstant.imgIcSharpHouse)),
          Padding(
              padding: EdgeInsets.only(top: 14.v, bottom: 6.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(houseRentingText,
                        style: CustomTextStyles.titleMediumNunitoBlack900
                            .copyWith(color: appTheme.black900)),
                    SizedBox(height: 5.v),
                    Text(yourHouseRentingText,
                        style: CustomTextStyles.titleSmallUbuntu
                            .copyWith(color: appTheme.gray40002))
                  ]))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
