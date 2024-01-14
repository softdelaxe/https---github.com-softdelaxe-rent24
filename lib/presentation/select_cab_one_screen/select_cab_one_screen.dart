import 'bloc/select_cab_one_bloc.dart';
import 'models/select_cab_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';
import 'package:rent24/widgets/custom_icon_button.dart';
import 'package:rent24/presentation/select_cab_bottomsheet/select_cab_bottomsheet.dart';

class SelectCabOneScreen extends StatelessWidget {
  const SelectCabOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SelectCabOneBloc>(
        create: (context) => SelectCabOneBloc(
            SelectCabOneState(selectCabOneModelObj: SelectCabOneModel()))
          ..add(SelectCabOneInitialEvent()),
        child: SelectCabOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SelectCabOneBloc, SelectCabOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 36.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 21.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeftGray800,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                  margin: EdgeInsets.only(top: 1.v),
                                  onTap: () {
                                    onTapImgArrowLeft(context);
                                  }),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 26.h, bottom: 3.v),
                                  child: Text("lbl_book_now".tr,
                                      style: CustomTextStyles
                                          .titleLargeBluegray900))
                            ]))),
                    SizedBox(height: 7.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle57,
                        height: 210.v,
                        width: 350.h),
                    SizedBox(height: 19.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 17.h, vertical: 13.v),
                        decoration: AppDecoration.outlineOnPrimaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL30),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 8.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text("lbl_xuv_720".tr,
                                      style: CustomTextStyles
                                          .titleLargeSansationBlack900)),
                              SizedBox(height: 5.v),
                              Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconsaxBoldLocation,
                                    height: 20.v,
                                    width: 21.h),
                                Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("msg_st_faith_eke_awka".tr,
                                        style: theme.textTheme.titleSmall))
                              ]),
                              SizedBox(height: 7.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIconsaxBoldStar1,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIconsaxBoldStar1,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(left: 2.h)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIconsaxBoldStar1,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(left: 2.h)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIconsaxBoldStar1,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(left: 2.h)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIconsaxBoldStar1,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(left: 2.h)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text("msg_5_1_115_reviews".tr,
                                            style: CustomTextStyles
                                                .titleSmallSansationOnPrimary))
                                  ])),
                              SizedBox(height: 21.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Row(children: [
                                    SizedBox(
                                        width: 81.h,
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMaterialSymbolBlueGray90001,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 2.h),
                                              child: Text("lbl_4_persons".tr,
                                                  style: theme
                                                      .textTheme.labelLarge))
                                        ])),
                                    Container(
                                        width: 83.h,
                                        margin: EdgeInsets.only(left: 79.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgIconParkOutlineManualGear,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 2.h),
                                              child: Text("lbl_auto_gear".tr,
                                                  style: theme
                                                      .textTheme.labelLarge))
                                        ]))
                                  ])),
                              SizedBox(height: 17.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 2.h, right: 86.h),
                                  child: Row(children: [
                                    SizedBox(
                                        width: 85.h,
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgFluentLuggage32Regular,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 2.h),
                                              child: Text("lbl_2_luggage".tr,
                                                  style: theme
                                                      .textTheme.labelLarge))
                                        ])),
                                    Container(
                                        width: 107.h,
                                        margin: EdgeInsets.only(left: 74.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMaterialSymbolBlueGray9000120x20,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 2.h),
                                              child: Text(
                                                  "lbl_verified_driver".tr,
                                                  style: theme
                                                      .textTheme.labelLarge))
                                        ]))
                                  ])),
                              SizedBox(height: 21.v),
                              _buildJohnDoe(context),
                              SizedBox(height: 15.v),
                              Container(
                                  width: 324.h,
                                  margin:
                                      EdgeInsets.only(left: 7.h, right: 24.h),
                                  child: Text("msg_lorem_ipsum_dolor5".tr,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .titleSmallNunitoGray40003
                                          .copyWith(height: 1.47))),
                              SizedBox(height: 26.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_total_amount".tr,
                                            style: CustomTextStyles
                                                .titleSmallNunitoBlack900),
                                        TextSpan(
                                            text: "lbl_n1_200_00".tr,
                                            style: CustomTextStyles
                                                .titleLargePrimary_1)
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 21.v),
                              CustomElevatedButton(
                                  text: "lbl_book_now".tr,
                                  margin:
                                      EdgeInsets.only(left: 2.h, right: 3.h),
                                  onPressed: () {
                                    onTapBookNow(context);
                                  })
                            ]))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildJohnDoe(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse4,
              height: 60.adaptSize,
              width: 60.adaptSize,
              radius: BorderRadius.circular(30.h)),
          Padding(
              padding: EdgeInsets.only(left: 11.h, top: 13.v, bottom: 6.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_john_doe".tr,
                        style: CustomTextStyles.titleMediumInterOnPrimary),
                    Text("lbl_driver".tr,
                        style: CustomTextStyles.titleSmallOnPrimaryContainer)
                  ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.outlineBlack,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgMaterialSymbolsCallOutline))),
          Padding(
              padding: EdgeInsets.only(left: 22.h, top: 10.v, bottom: 10.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.outlineBlack,
                  child: CustomImageView(
                      imagePath:
                          ImageConstant.imgMaterialSymbolWhiteA70040x40)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [SelectCabBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapBookNow(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => SelectCabBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
