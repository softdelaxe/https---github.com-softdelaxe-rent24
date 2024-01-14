import '../models/selectstatecomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

// ignore: must_be_immutable
class SelectstatecomponentItemWidget extends StatelessWidget {
  SelectstatecomponentItemWidget(
    this.selectstatecomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SelectstatecomponentItemModel selectstatecomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            selectstatecomponentItemModelObj.selectedState!,
            style: CustomTextStyles.titleMediumNunitoBlack900_1,
          ),
        ),
        SizedBox(height: 7.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.outlinePrimary3.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 9.h,
                  top: 3.v,
                ),
                child: Text(
                  selectstatecomponentItemModelObj.stateName!,
                  style: CustomTextStyles.titleMediumNunitoExtraBold,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconsaxLinearArrowdown2Gray40002,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(top: 3.v),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
