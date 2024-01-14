import 'bloc/chat_bloc.dart';
import 'models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatBloc>(
        create: (context) => ChatBloc(ChatState(chatModelObj: ChatModel()))
          ..add(ChatInitialEvent()),
        child: ChatScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: appTheme.gray5001,
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.black900.withOpacity(0.15),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(0, 40))
                      ],
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup241),
                          fit: BoxFit.cover)),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildArrowLeftRow(context),
                            SizedBox(height: 34.v),
                            Container(
                                width: 267.h,
                                margin:
                                    EdgeInsets.only(left: 20.h, right: 103.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 13.h, vertical: 10.v),
                                decoration: AppDecoration.outlinePrimary1
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 6.v),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle37,
                                          height: 117.v,
                                          width: 232.h,
                                          radius: BorderRadius.circular(5.h)),
                                      SizedBox(height: 15.v),
                                      SizedBox(
                                          height: 52.v,
                                          width: 231.h,
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                Align(
                                                    alignment: Alignment
                                                        .topLeft,
                                                    child: SizedBox(
                                                        width: 189.h,
                                                        child: Text(
                                                            "msg_mark_mill_want_to"
                                                                .tr,
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: CustomTextStyles
                                                                .titleSmallSansationGray800Bold15))),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Text("lbl_9_52pm".tr,
                                                        style: CustomTextStyles
                                                            .labelLargeInterGray400))
                                              ]))
                                    ])),
                            SizedBox(height: 15.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 21.h, right: 103.h),
                                child: _buildThirtyFourColumn(context,
                                    messageText: "msg_hello_i_will_like".tr,
                                    messageTime: "lbl_9_52pm".tr)),
                            SizedBox(height: 24.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    width: 183.h,
                                    margin: EdgeInsets.only(
                                        left: 190.h, right: 17.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 9.h, vertical: 6.v),
                                    decoration: AppDecoration.outlinePrimary2
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 9.v),
                                          Text("msg_alright_its_still".tr,
                                              style: CustomTextStyles
                                                  .titleSmallSansationWhiteA700),
                                          SizedBox(height: 1.v),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 9.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 3.v),
                                                            child: Text(
                                                                "lbl_9_52pm".tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeInterGray300)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgMdiCheckAll,
                                                            height:
                                                                20.adaptSize,
                                                            width: 20.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 9.h))
                                                      ])))
                                        ]))),
                            SizedBox(height: 20.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 21.h, right: 103.h),
                                child: _buildThirtyFourColumn(context,
                                    messageText: "msg_okay_i_will_like".tr,
                                    messageTime: "lbl_9_52pm".tr)),
                            SizedBox(height: 5.v)
                          ]))),
              bottomNavigationBar: _buildFortyEightRow(context)));
    });
  }

  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 25.v),
        decoration: AppDecoration.fillPrimary1,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftWhiteA700,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(top: 25.v, bottom: 15.v),
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse9,
                  height: 63.adaptSize,
                  width: 63.adaptSize,
                  radius: BorderRadius.circular(31.h),
                  margin: EdgeInsets.only(left: 18.h, top: 7.v)),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 17.v, bottom: 4.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_mark_mill".tr,
                            style: theme.textTheme.titleLarge),
                        Text("lbl_online".tr,
                            style: CustomTextStyles.titleSmallNunitoGray40004)
                      ])),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgMdiDotsVertical,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(top: 25.v, bottom: 15.v))
            ]));
  }

  /// Section Widget
  Widget _buildFortyEightRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 40.h, right: 37.h, bottom: 49.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder35),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGoogle,
                  height: 30.adaptSize,
                  width: 30.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 19.h, top: 4.v),
                  child: Text("lbl_message".tr,
                      style: CustomTextStyles.titleMediumNunitoGray40002)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgIconsaxLinearSend,
                  height: 30.adaptSize,
                  width: 30.adaptSize)
            ]));
  }

  /// Common widget
  Widget _buildThirtyFourColumn(
    BuildContext context, {
    required String messageText,
    required String messageTime,
  }) {
    return Container(
        width: 266.h,
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 12.v),
              Text(messageText,
                  style: CustomTextStyles.titleSmallSansationGray800
                      .copyWith(color: appTheme.gray800)),
              SizedBox(height: 6.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(messageTime,
                      style: CustomTextStyles.labelLargeInterGray400
                          .copyWith(color: appTheme.gray400)))
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
