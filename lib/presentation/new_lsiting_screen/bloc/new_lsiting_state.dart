// ignore_for_file: must_be_immutable

part of 'new_lsiting_bloc.dart';

/// Represents the state of NewLsiting in the application.
class NewLsitingState extends Equatable {
  NewLsitingState({
    this.electricity = false,
    this.water = false,
    this.packingSpace = false,
    this.newLsitingModelObj,
  });

  NewLsitingModel? newLsitingModelObj;

  bool electricity;

  bool water;

  bool packingSpace;

  @override
  List<Object?> get props => [
        electricity,
        water,
        packingSpace,
        newLsitingModelObj,
      ];
  NewLsitingState copyWith({
    bool? electricity,
    bool? water,
    bool? packingSpace,
    NewLsitingModel? newLsitingModelObj,
  }) {
    return NewLsitingState(
      electricity: electricity ?? this.electricity,
      water: water ?? this.water,
      packingSpace: packingSpace ?? this.packingSpace,
      newLsitingModelObj: newLsitingModelObj ?? this.newLsitingModelObj,
    );
  }
}
