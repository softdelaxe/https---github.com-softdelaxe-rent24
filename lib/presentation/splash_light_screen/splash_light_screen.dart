import 'bloc/splash_light_bloc.dart';
import 'models/splash_light_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

class SplashLightScreen extends StatelessWidget {
  const SplashLightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashLightBloc>(
      create: (context) => SplashLightBloc(SplashLightState(
        splashLightModelObj: SplashLightModel(),
      ))
        ..add(SplashLightInitialEvent()),
      child: SplashLightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SplashLightBloc, SplashLightState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 42.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.v),
                  CustomImageView(
                    imagePath: ImageConstant.img2RemovebgPreview,
                    height: 306.adaptSize,
                    width: 306.adaptSize,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
