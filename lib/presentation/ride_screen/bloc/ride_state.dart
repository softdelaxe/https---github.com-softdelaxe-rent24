// ignore_for_file: must_be_immutable

part of 'ride_bloc.dart';

/// Represents the state of Ride in the application.
class RideState extends Equatable {
  RideState({
    this.pickUpvalueController,
    this.rideModelObj,
  });

  TextEditingController? pickUpvalueController;

  RideModel? rideModelObj;

  @override
  List<Object?> get props => [
        pickUpvalueController,
        rideModelObj,
      ];
  RideState copyWith({
    TextEditingController? pickUpvalueController,
    RideModel? rideModelObj,
  }) {
    return RideState(
      pickUpvalueController:
          pickUpvalueController ?? this.pickUpvalueController,
      rideModelObj: rideModelObj ?? this.rideModelObj,
    );
  }
}
