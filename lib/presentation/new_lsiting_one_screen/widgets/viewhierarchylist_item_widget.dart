import '../models/viewhierarchylist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchylistItemWidget extends StatelessWidget {
  ViewhierarchylistItemWidget(
    this.viewhierarchylistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchylistItemModel viewhierarchylistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      decoration: AppDecoration.outlineGray50001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: viewhierarchylistItemModelObj?.duplexHouseImage,
            height: 133.v,
            width: 134.h,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              right: 12.h,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 178.h,
                  margin: EdgeInsets.only(left: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 7.v),
                        child: Text(
                          viewhierarchylistItemModelObj.duplexHouseText!,
                          style: CustomTextStyles
                              .titleMediumNunitoBlack900ExtraBold,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMdiCardsHeart,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 7.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconsaxBoldLocation,
                      height: 20.v,
                      width: 21.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        viewhierarchylistItemModelObj.stFaithEkeAwkaText!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.v),
                CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 14.v,
                  width: 77.h,
                  margin: EdgeInsets.only(left: 3.h),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    viewhierarchylistItemModelObj.reviewText!,
                    style: CustomTextStyles.titleSmallSansationOnPrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
