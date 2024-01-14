import 'bloc/ride_bloc.dart';
import 'models/ride_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_icon_button.dart';
import 'package:rent24/widgets/custom_text_form_field.dart';

class RideScreen extends StatelessWidget {
  const RideScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RideBloc>(
      create: (context) => RideBloc(RideState(
        rideModelObj: RideModel(),
      ))
        ..add(RideInitialEvent()),
      child: RideScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 804.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(36.h, 30.v, 29.h, 30.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomIconButton(
                        height: 31.adaptSize,
                        width: 31.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        alignment: Alignment.center,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEvaCarOutline,
                        ),
                      ),
                      SizedBox(height: 43.v),
                      Padding(
                        padding: EdgeInsets.only(right: 59.h),
                        child: CustomIconButton(
                          height: 31.adaptSize,
                          width: 31.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgFluentVehicleCar16Regular,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 49,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 31.h),
                        child: CustomIconButton(
                          height: 31.adaptSize,
                          width: 31.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          alignment: Alignment.centerLeft,
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgFluentVehicleCar16Regular,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 50,
                      ),
                      CustomIconButton(
                        height: 31.adaptSize,
                        width: 31.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFluentVehicleCar16Regular,
                        ),
                      ),
                      SizedBox(height: 84.v),
                      Padding(
                        padding: EdgeInsets.only(right: 134.h),
                        child: CustomIconButton(
                          height: 31.adaptSize,
                          width: 31.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgFluentVehicleCar16Regular,
                          ),
                        ),
                      ),
                      SizedBox(height: 50.v),
                      CustomIconButton(
                        height: 31.adaptSize,
                        width: 31.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        alignment: Alignment.centerLeft,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgJamCar,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup108,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildPickUpSection(context),
                      SizedBox(height: 22.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 18.h,
                          right: 17.h,
                        ),
                        child: BlocSelector<RideBloc, RideState,
                            TextEditingController?>(
                          selector: (state) => state.pickUpvalueController,
                          builder: (context, pickUpvalueController) {
                            return CustomTextFormField(
                              controller: pickUpvalueController,
                              hintText: "msg_no_5_umushi_street".tr,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(13.h, 19.v, 12.h, 16.v),
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgIconsaxBulkLocation,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ),
                              prefixConstraints: BoxConstraints(
                                maxHeight: 59.v,
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 19.v,
                                right: 30.h,
                                bottom: 19.v,
                              ),
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlineGray,
                              fillColor: appTheme.whiteA700,
                            );
                          },
                        ),
                      ),
                      Spacer(),
                      _buildFareEstimateSection(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPickUpSection(BuildContext context) {
    return SizedBox(
      height: 94.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 15.v),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconsaxBulkElementplus,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    margin: EdgeInsets.only(top: 13.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 17.v,
                    ),
                    child: Text(
                      "lbl_pick_up".tr,
                      style: CustomTextStyles.titleLargeSansationBlack900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 16.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFareEstimateSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 66.h,
        vertical: 45.v,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_estimate_pick_up2".tr,
                  style: CustomTextStyles.titleLargeBlack900SemiBold,
                ),
                TextSpan(
                  text: "lbl_4mins".tr,
                  style: CustomTextStyles.titleLargeBlack900,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 8.v),
          Text(
            "lbl_n500_00".tr,
            style: CustomTextStyles.headlineSmallExtraBold,
          ),
          SizedBox(height: 2.v),
          Text(
            "msg_fare_estimate_min".tr,
            style: CustomTextStyles.titleLargeBlack900SemiBold_1,
          ),
        ],
      ),
    );
  }
}
