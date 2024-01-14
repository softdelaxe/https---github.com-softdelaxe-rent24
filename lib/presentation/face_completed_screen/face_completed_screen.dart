import 'bloc/face_completed_bloc.dart';
import 'models/face_completed_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_elevated_button.dart';

class FaceCompletedScreen extends StatelessWidget {
  const FaceCompletedScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FaceCompletedBloc>(
      create: (context) => FaceCompletedBloc(FaceCompletedState(
        faceCompletedModelObj: FaceCompletedModel(),
      ))
        ..add(FaceCompletedInitialEvent()),
      child: FaceCompletedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FaceCompletedBloc, FaceCompletedState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 36.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 134.adaptSize,
                    width: 134.adaptSize,
                    padding: EdgeInsets.all(27.h),
                    decoration: AppDecoration.fillPrimary2.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder67,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconsaxBulkFingerscan,
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Text(
                    "msg_face_scan_was_successful".tr,
                    style: CustomTextStyles.headlineSmallSansationPrimary,
                  ),
                  SizedBox(height: 22.v),
                  SizedBox(
                    width: 316.h,
                    child: Text(
                      "msg_lorem_ipsum_dolor3".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style:
                          CustomTextStyles.titleSmallNunitoGray40003.copyWith(
                        height: 1.47,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildDashboardButton(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDashboardButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_dashboard".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 46.v,
      ),
    );
  }
}
