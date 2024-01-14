import '../models/notificationcardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class NotificationcardlistItemWidget extends StatelessWidget {
  NotificationcardlistItemWidget(
    this.notificationcardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationcardlistItemModel notificationcardlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 1.h,
        vertical: 2.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        children: [
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 4.v,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: notificationcardlistItemModelObj?.userImage,
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  radius: BorderRadius.circular(
                    35.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.outlineWhiteA,
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMdiGuestRoomOutline,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                top: 10.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 254.h,
                    child: Text(
                      notificationcardlistItemModelObj.notificationText!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumNunitoBlack900SemiBold,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    notificationcardlistItemModelObj.timeAgo!,
                    style: CustomTextStyles.titleSmallUbuntuGray500,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
