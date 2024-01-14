// ignore_for_file: must_be_immutable

part of 'splash_light_bloc.dart';

/// Represents the state of SplashLight in the application.
class SplashLightState extends Equatable {
  SplashLightState({this.splashLightModelObj});

  SplashLightModel? splashLightModelObj;

  @override
  List<Object?> get props => [
        splashLightModelObj,
      ];
  SplashLightState copyWith({SplashLightModel? splashLightModelObj}) {
    return SplashLightState(
      splashLightModelObj: splashLightModelObj ?? this.splashLightModelObj,
    );
  }
}
