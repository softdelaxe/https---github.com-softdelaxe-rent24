import '../new_lsiting_screen/widgets/selectstatecomponent_item_widget.dart';
import 'bloc/new_lsiting_bloc.dart';
import 'models/new_lsiting_model.dart';
import 'models/selectstatecomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_checkbox_button.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';
import 'package:rent24/widgets/custom_outlined_button.dart';
import 'package:rent24/presentation/select_cab_bottomsheet/select_cab_bottomsheet.dart';

class NewLsitingScreen extends StatelessWidget {
  const NewLsitingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NewLsitingBloc>(
        create: (context) => NewLsitingBloc(
            NewLsitingState(newLsitingModelObj: NewLsitingModel()))
          ..add(NewLsitingInitialEvent()),
        child: NewLsitingScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 29.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.h, right: 11.h, bottom: 71.v),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgArrowLeftGray800,
                                              height: 30.adaptSize,
                                              width: 30.adaptSize,
                                              onTap: () {
                                                onTapImgArrowLeft(context);
                                              }),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 21.h, bottom: 2.v),
                                              child: Text("lbl_add_list".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeBluegray900))
                                        ]))),
                                SizedBox(height: 30.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 6.h),
                                        child: Text("lbl_rent_out_item".tr,
                                            style: CustomTextStyles
                                                .titleLargeSansationBlack900))),
                                SizedBox(height: 33.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 1.h, right: 11.h),
                                    child: _buildRate(context)),
                                SizedBox(height: 17.v),
                                _buildSelectCategories(context),
                                SizedBox(height: 16.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: Text("msg_features_select".tr,
                                            style: CustomTextStyles
                                                .titleMediumNunitoGray800))),
                                SizedBox(height: 8.v),
                                _buildElectricity(context),
                                SizedBox(height: 23.v),
                                _buildSelectStateComponent(context),
                                SizedBox(height: 16.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 1.h, right: 11.h),
                                    child: _buildRate(context)),
                                SizedBox(height: 21.v),
                                _buildTwelve(context),
                                SizedBox(height: 19.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Row(children: [
                                          Container(
                                              height: 70.adaptSize,
                                              width: 70.adaptSize,
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.h))),
                                          Container(
                                              height: 70.adaptSize,
                                              width: 70.adaptSize,
                                              margin:
                                                  EdgeInsets.only(left: 11.h),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.h)))
                                        ]))),
                                SizedBox(height: 52.v),
                                CustomElevatedButton(
                                    text: "lbl_add".tr,
                                    margin: EdgeInsets.only(right: 9.h),
                                    onPressed: () {
                                      onTapAdd(context);
                                    })
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildSelectCategories(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 11.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text("msg_select_categories".tr,
                  style: CustomTextStyles.titleMediumNunitoBlack900_1)),
          SizedBox(height: 6.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
              decoration: AppDecoration.outlinePrimary3
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 9.h, top: 2.v),
                        child: Text("lbl_accomodation".tr,
                            style:
                                CustomTextStyles.titleMediumNunitoExtraBold)),
                    CustomImageView(
                        imagePath:
                            ImageConstant.imgIconsaxLinearArrowdown2Gray40002,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(top: 2.v))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildElectricity(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          BlocSelector<NewLsitingBloc, NewLsitingState, bool?>(
              selector: (state) => state.electricity,
              builder: (context, electricity) {
                return CustomCheckboxButton(
                    text: "lbl_electricity".tr,
                    value: electricity,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    onChange: (value) {
                      context
                          .read<NewLsitingBloc>()
                          .add(ChangeCheckBoxEvent(value: value));
                    });
              }),
          BlocSelector<NewLsitingBloc, NewLsitingState, bool?>(
              selector: (state) => state.water,
              builder: (context, water) {
                return CustomCheckboxButton(
                    text: "lbl_water".tr,
                    value: water,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    onChange: (value) {
                      context
                          .read<NewLsitingBloc>()
                          .add(ChangeCheckBox1Event(value: value));
                    });
              }),
          BlocSelector<NewLsitingBloc, NewLsitingState, bool?>(
              selector: (state) => state.packingSpace,
              builder: (context, packingSpace) {
                return CustomCheckboxButton(
                    text: "lbl_packing_space".tr,
                    value: packingSpace,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    onChange: (value) {
                      context
                          .read<NewLsitingBloc>()
                          .add(ChangeCheckBox2Event(value: value));
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildSelectStateComponent(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 11.h),
        child: BlocSelector<NewLsitingBloc, NewLsitingState, NewLsitingModel?>(
            selector: (state) => state.newLsitingModelObj,
            builder: (context, newLsitingModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 16.v);
                  },
                  itemCount:
                      newLsitingModelObj?.selectstatecomponentItemList.length ??
                          0,
                  itemBuilder: (context, index) {
                    SelectstatecomponentItemModel model = newLsitingModelObj
                            ?.selectstatecomponentItemList[index] ??
                        SelectstatecomponentItemModel();
                    return SelectstatecomponentItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Container(
            margin: EdgeInsets.only(left: 1.h, right: 11.h),
            padding: EdgeInsets.symmetric(horizontal: 60.h, vertical: 37.v),
            decoration: AppDecoration.fillGray10001
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowUp,
                      height: 40.v,
                      width: 55.h),
                  SizedBox(height: 19.v),
                  Text("msg_drag_and_drop_your".tr,
                      style: CustomTextStyles.titleMediumRalewayGray50002),
                  SizedBox(height: 11.v),
                  Text("msg_files_support_jpg_png".tr,
                      style: CustomTextStyles.titleSmallNunitoBluegray10001),
                  SizedBox(height: 13.v),
                  CustomOutlinedButton(
                      height: 57.v,
                      text: "lbl_browser_files".tr,
                      margin: EdgeInsets.only(left: 31.h, right: 32.h),
                      buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallNunitoPrimaryExtraBold),
                  SizedBox(height: 3.v)
                ])));
  }

  /// Common widget
  Widget _buildRate(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text("lbl_rate".tr,
              style: CustomTextStyles.titleMediumNunitoBlack900_1)),
      SizedBox(height: 7.v),
      Container(
          width: 347.h,
          padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 19.v),
          decoration: AppDecoration.outlinePrimary3
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: Text("lbl_price".tr,
              style: CustomTextStyles.titleMediumNunitoExtraBold))
    ]);
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
  onTapAdd(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => SelectCabBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
