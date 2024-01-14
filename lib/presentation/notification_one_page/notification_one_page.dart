import '../notification_one_page/widgets/notificationcardlist_item_widget.dart';
import 'bloc/notification_one_bloc.dart';
import 'models/notification_one_model.dart';
import 'models/notificationcardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rent24/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NotificationOnePage extends StatelessWidget {
  const NotificationOnePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationOneBloc>(
      create: (context) => NotificationOneBloc(NotificationOneState(
        notificationOneModelObj: NotificationOneModel(),
      ))
        ..add(NotificationOneInitialEvent()),
      child: NotificationOnePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineBlack900,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 21.h),
            child: Column(
              children: [
                SizedBox(height: 21.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_notification".tr,
                      style: CustomTextStyles.titleLargeBluegray900,
                    ),
                  ),
                ),
                SizedBox(height: 29.v),
                _buildNotificationCardList(context),
                Spacer(),
                Container(
                  height: 80.v,
                  width: 70.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 16.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup67,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconsaxLinearAdd,
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationCardList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: BlocSelector<NotificationOneBloc, NotificationOneState,
          NotificationOneModel?>(
        selector: (state) => state.notificationOneModelObj,
        builder: (context, notificationOneModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 13.v,
              );
            },
            itemCount:
                notificationOneModelObj?.notificationcardlistItemList.length ??
                    0,
            itemBuilder: (context, index) {
              NotificationcardlistItemModel model = notificationOneModelObj
                      ?.notificationcardlistItemList[index] ??
                  NotificationcardlistItemModel();
              return NotificationcardlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
