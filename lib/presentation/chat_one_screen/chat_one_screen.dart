import 'bloc/chat_one_bloc.dart';
import 'models/chat_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/presentation/notification_one_page/notification_one_page.dart';
import 'package:rent24/widgets/custom_bottom_bar.dart';

class ChatOneScreen extends StatelessWidget {
  ChatOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatOneBloc>(
      create: (context) => ChatOneBloc(ChatOneState(
        chatOneModelObj: ChatOneModel(),
      ))
        ..add(ChatOneInitialEvent()),
      child: ChatOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ChatOneBloc, ChatOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildSixtyOne(context),
                  SizedBox(height: 25.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 23.h,
                      right: 31.h,
                    ),
                    child: _buildPraiseDoe(
                      context,
                      praiseDoeText: "lbl_mark_mill".tr,
                      timeText: "lbl_20mins".tr,
                      alrightTanksText: "msg_hello_i_will_like2".tr,
                      thirtyNineText: "lbl_1".tr,
                    ),
                  ),
                  SizedBox(height: 26.v),
                  _buildJohnDoe1(context),
                  SizedBox(height: 26.v),
                  _buildMartinJacob1(context),
                  SizedBox(height: 26.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 23.h,
                      right: 31.h,
                    ),
                    child: _buildPraiseDoe(
                      context,
                      praiseDoeText: "lbl_praise_doe".tr,
                      timeText: "lbl_40mins".tr,
                      alrightTanksText: "lbl_alright_tanks".tr,
                      thirtyNineText: "lbl_1".tr,
                    ),
                  ),
                  SizedBox(height: 26.v),
                  _buildMaryLove(context),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSixtyOne(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 29.v,
      ),
      decoration: AppDecoration.fillPrimary1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Text(
            "lbl_hello_john".tr,
            style: CustomTextStyles.titleSmallSansationGray20001,
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_chat".tr,
                    style: CustomTextStyles.headlineLargeSansation,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIconsaxOutlineSearchstatus,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(bottom: 7.v),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJohnDoe1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 31.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse91,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              40.h,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 10.v,
                bottom: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHelloIWillLike(
                    context,
                    helloText: "lbl_john_doe".tr,
                    labelText: "lbl_25mins".tr,
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 168.h,
                    child: Text(
                      "msg_wow_i_love_the".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallSansation,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMartinJacob1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 31.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse92,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              40.h,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                top: 10.v,
                bottom: 16.v,
              ),
              child: Column(
                children: [
                  _buildHelloIWillLike(
                    context,
                    helloText: "lbl_martin_jacob".tr,
                    labelText: "lbl_30mins".tr,
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(right: 5.h),
                    child: _buildHelloIWillLike1(
                      context,
                      text: "lbl_nice_one_nigga".tr,
                      image: ImageConstant.imgMdiCheckAllPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMaryLove(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 23.h,
          right: 36.h,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse94,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                40.h,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 11.h,
                  top: 10.v,
                  bottom: 4.v,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            "lbl_mary_love".tr,
                            style: CustomTextStyles
                                .titleMediumNunitoBlack900ExtraBold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Text(
                            "lbl_1hr".tr,
                            style: CustomTextStyles
                                .titleSmallNunitoPrimaryExtraBold15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.v),
                    _buildHelloIWillLike1(
                      context,
                      text: "msg_hello_i_will_like2".tr,
                      image: ImageConstant.imgIcRoundCheck,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildHelloIWillLike(
    BuildContext context, {
    required String helloText,
    required String labelText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 178.h,
          child: Text(
            helloText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleSmallSansation.copyWith(
              color: appTheme.gray40002,
            ),
          ),
        ),
        Container(
          width: 30.adaptSize,
          margin: EdgeInsets.only(
            left: 37.h,
            top: 3.v,
            bottom: 3.v,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 4.v,
          ),
          decoration: AppDecoration.fillPrimary1.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Text(
            labelText,
            style:
                CustomTextStyles.titleSmallNunitoWhiteA700ExtraBold15.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPraiseDoe(
    BuildContext context, {
    required String praiseDoeText,
    required String timeText,
    required String alrightTanksText,
    required String thirtyNineText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse93,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            40.h,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 10.v,
              bottom: 8.v,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      praiseDoeText,
                      style: CustomTextStyles.titleMediumNunitoBlack900ExtraBold
                          .copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: Text(
                        timeText,
                        style: CustomTextStyles
                            .titleSmallNunitoPrimaryExtraBold15
                            .copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.v),
                      child: Text(
                        alrightTanksText,
                        style: CustomTextStyles.titleSmallSansation.copyWith(
                          color: appTheme.gray40002,
                        ),
                      ),
                    ),
                    Container(
                      width: 30.adaptSize,
                      margin: EdgeInsets.only(top: 2.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.fillPrimary1.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder15,
                      ),
                      child: Text(
                        thirtyNineText,
                        style: CustomTextStyles
                            .titleSmallNunitoWhiteA700ExtraBold15
                            .copyWith(
                          color: appTheme.whiteA700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildHelloIWillLike1(
    BuildContext context, {
    required String text,
    required String image,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 178.h,
          child: Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleSmallSansation.copyWith(
              color: appTheme.gray40002,
            ),
          ),
        ),
        CustomImageView(
          imagePath: image,
          height: 25.adaptSize,
          width: 25.adaptSize,
          margin: EdgeInsets.only(
            left: 37.h,
            top: 5.v,
            bottom: 6.v,
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconsaxoutlinehome2:
        return AppRoutes.notificationOnePage;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Iconsaxtwotoneheart:
        return "/";
      case BottomBarEnum.Iconsaxtwotoneprofile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.notificationOnePage:
        return NotificationOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
