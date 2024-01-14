// ignore_for_file: must_be_immutable

part of 'select_cab_bloc.dart';

/// Represents the state of SelectCab in the application.
class SelectCabState extends Equatable {
  SelectCabState({this.selectCabModelObj});

  SelectCabModel? selectCabModelObj;

  @override
  List<Object?> get props => [
        selectCabModelObj,
      ];
  SelectCabState copyWith({SelectCabModel? selectCabModelObj}) {
    return SelectCabState(
      selectCabModelObj: selectCabModelObj ?? this.selectCabModelObj,
    );
  }
}
