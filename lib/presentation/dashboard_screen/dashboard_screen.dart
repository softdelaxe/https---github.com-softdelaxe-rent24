import 'bloc/dashboard_bloc.dart';
import 'models/dashboard_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_icon_button.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) =>
            DashboardBloc(DashboardState(dashboardModelObj: DashboardModel()))
              ..add(DashboardInitialEvent()),
        child: DashboardScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 20.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Column(children: [
                      _buildArrowLeftRow(context),
                      SizedBox(height: 37.v),
                      Text("lbl_my_balance".tr,
                          style: CustomTextStyles
                              .titleMediumNunitoWhiteA700SemiBold),
                      SizedBox(height: 6.v),
                      Text("lbl_n200_000".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 25.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 21.h, vertical: 30.v),
                          decoration: AppDecoration.fillGray5001.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildTopUpBalanceRow(context),
                            SizedBox(height: 20.v),
                            _buildBusinessdBusRow(context),
                            SizedBox(height: 43.v),
                            _buildMyListingRow(context),
                            SizedBox(height: 21.v),
                            _buildHaierThermocoolRow1(context),
                            SizedBox(height: 13.v),
                            _buildView(context),
                            SizedBox(height: 6.v)
                          ]))
                    ])))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeftWhiteA700,
              height: 30.adaptSize,
              width: 30.adaptSize,
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          GestureDetector(
              onTap: () {
                onTapTxtTransactionHistory(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text("msg_transaction_history".tr,
                      style: CustomTextStyles.titleMediumNunitoWhiteA700)))
        ]));
  }

  /// Section Widget
  Widget _buildTopUpBalanceRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 2.h),
        padding: EdgeInsets.symmetric(vertical: 13.v),
        decoration: AppDecoration.fillIndigoA
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
              padding: EdgeInsets.only(top: 5.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_top_up_balance".tr,
                        style: CustomTextStyles.titleMediumNunitoBlack900),
                    SizedBox(height: 6.v),
                    Text("msg_you_can_topup_via".tr,
                        style: CustomTextStyles.labelLargeGray40002)
                  ])),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: CustomIconButton(
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.outlinePrimaryTL23,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconsaxLinearAddWhiteA700)))
        ]));
  }

  /// Section Widget
  Widget _buildBusinessdBusRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 13.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 36.h, vertical: 11.v),
                  decoration: AppDecoration.fillIndigoA10026
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgBusiness3dBus,
                            height: 68.adaptSize,
                            width: 68.adaptSize,
                            alignment: Alignment.center),
                        SizedBox(height: 8.v),
                        SizedBox(
                            width: 84.h,
                            child: Text("msg_pending_approval".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .titleLargeBlack900SemiBold_1
                                    .copyWith(height: 1.10))),
                        SizedBox(height: 5.v)
                      ]))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 13.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 41.h, vertical: 16.v),
                  decoration: AppDecoration.fillPurple
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.img3dHandsFunAn,
                            height: 59.v,
                            width: 72.h),
                        SizedBox(height: 15.v),
                        Container(
                            width: 66.h,
                            margin: EdgeInsets.only(left: 3.h),
                            child: Text("lbl_rented_out".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .titleLargeBlack900SemiBold_1
                                    .copyWith(height: 1.10)))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildMyListingRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("lbl_my_listing".tr,
                  style: CustomTextStyles.titleLargeBlack900Bold)),
          SizedBox(
              height: 30.v,
              width: 103.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                        onTap: () {
                          onTapTxtAddNew(context);
                        },
                        child: Text("lbl_add_new".tr,
                            style: CustomTextStyles.titleMediumNunitoPrimary))),
                CustomImageView(
                    imagePath: ImageConstant.imgIconsaxLinearAddPrimary,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    alignment: Alignment.centerLeft)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildHaierThermocoolRow1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h, right: 2.h),
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.outlineLightBlue
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle66,
              height: 138.v,
              width: 116.h,
              radius: BorderRadius.circular(5.h),
              margin: EdgeInsets.only(bottom: 2.v)),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: _buildHaierThermocoolRow(context,
                  title: "msg_haier_thermocool".tr,
                  dateListed1: "msg_date_listed_11_20_2023".tr,
                  dateListed2: "msg_date_listed_11_20_2023".tr,
                  status: "lbl_status_paused".tr,
                  location: "msg_location_anambra".tr))
        ]));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
        height: 19.v,
        width: 345.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 172.v,
                  width: 345.h,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(5.h),
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.lightBlue90019,
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(0, 5))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle66138x116,
                    height: 138.v,
                    width: 116.h,
                    radius: BorderRadius.circular(5.h)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h, top: 3.v),
                    child: _buildHaierThermocoolRow(context,
                        title: "msg_haier_thermocool".tr,
                        dateListed1: "msg_date_listed_11_20_2023".tr,
                        dateListed2: "msg_date_listed_11_20_2023".tr,
                        status: "lbl_status_paused".tr,
                        location: "msg_location_anambra".tr))
              ]))
        ]));
  }

  /// Common widget
  Widget _buildHaierThermocoolRow(
    BuildContext context, {
    required String title,
    required String dateListed1,
    required String dateListed2,
    required String status,
    required String location,
  }) {
    return Column(children: [
      SizedBox(
          width: 175.h,
          child: Text(title,
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumNunitoPrimaryExtraBold
                  .copyWith(color: theme.colorScheme.primary))),
      SizedBox(height: 7.v),
      SizedBox(
          height: 20.v,
          width: 175.h,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "lbl_date_listed".tr,
                          style: CustomTextStyles
                              .titleSmallNunitoBlack900ExtraBold15),
                      TextSpan(
                          text: "lbl_11_20_2023".tr,
                          style: CustomTextStyles
                              .titleSmallNunitoOnPrimaryContainer)
                    ]),
                    textAlign: TextAlign.left)),
            Align(
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "lbl_date_listed".tr,
                          style: CustomTextStyles
                              .titleSmallNunitoBlack900ExtraBold15),
                      TextSpan(
                          text: "lbl_11_20_2023".tr,
                          style: CustomTextStyles
                              .titleSmallNunitoOnPrimaryContainer)
                    ]),
                    textAlign: TextAlign.left))
          ])),
      SizedBox(height: 10.v),
      Align(
          alignment: Alignment.centerLeft,
          child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_status2".tr,
                    style:
                        CustomTextStyles.titleSmallNunitoBlack900ExtraBold15),
                TextSpan(
                    text: "lbl_paused".tr,
                    style: CustomTextStyles.titleSmallNunitoOnPrimaryContainer)
              ]),
              textAlign: TextAlign.left)),
      SizedBox(height: 11.v),
      RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "lbl_location3".tr,
                style: CustomTextStyles.titleSmallNunitoBlack900ExtraBold15),
            TextSpan(
                text: "lbl_anambra_west".tr,
                style: CustomTextStyles.titleSmallNunitoOnPrimaryContainer)
          ]),
          textAlign: TextAlign.left)
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the transactionHistoryScreen when the action is triggered.
  onTapTxtTransactionHistory(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.transactionHistoryScreen,
    );
  }

  /// Navigates to the newLsitingScreen when the action is triggered.
  onTapTxtAddNew(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newLsitingScreen,
    );
  }
}
