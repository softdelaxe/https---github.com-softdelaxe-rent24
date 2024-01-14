import 'bloc/select_cab_bloc.dart';
import 'models/select_cab_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

class SelectCabBottomsheet extends StatelessWidget {
  const SelectCabBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SelectCabBloc>(
        create: (context) =>
            SelectCabBloc(SelectCabState(selectCabModelObj: SelectCabModel()))
              ..add(SelectCabInitialEvent()),
        child: SelectCabBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: 388.h,
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 46.v),
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeftGray800,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        onTap: () {
                          onTapImgArrowLeft(context);
                        }),
                    Padding(
                        padding: EdgeInsets.only(left: 22.h),
                        child: Text("lbl_payment_option".tr,
                            style: CustomTextStyles.titleLargeBluegray900))
                  ]))),
          SizedBox(height: 47.v),
          Container(
              margin: EdgeInsets.only(left: 3.h),
              padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 16.v),
              decoration: AppDecoration.fillBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.only(left: 10.h, top: 4.v, bottom: 2.v),
                        child: Text("lbl_cash".tr,
                            style: CustomTextStyles.titleMediumInterBlack900)),
                    CustomImageView(
                        imagePath: ImageConstant.imgRiFlutterFill,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        margin: EdgeInsets.only(bottom: 2.v))
                  ])),
          SizedBox(height: 20.v),
          Container(
              margin: EdgeInsets.only(left: 3.h),
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
              decoration: AppDecoration.fillBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10.h, top: 8.v),
                        child: Text("lbl_wallet".tr,
                            style: CustomTextStyles.titleLargeInterBlack900)),
                    CustomImageView(
                        imagePath: ImageConstant.imgIcOutlineAcco,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        margin: EdgeInsets.only(top: 2.v))
                  ])),
          SizedBox(height: 90.v)
        ]));
  }

  /// Navigates to the selectCabOneScreen when the action is triggered.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.selectCabOneScreen,
    );
  }
}
