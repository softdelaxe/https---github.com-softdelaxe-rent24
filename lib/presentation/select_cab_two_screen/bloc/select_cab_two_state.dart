// ignore_for_file: must_be_immutable

part of 'select_cab_two_bloc.dart';

/// Represents the state of SelectCabTwo in the application.
class SelectCabTwoState extends Equatable {
  SelectCabTwoState({this.selectCabTwoModelObj});

  SelectCabTwoModel? selectCabTwoModelObj;

  @override
  List<Object?> get props => [
        selectCabTwoModelObj,
      ];
  SelectCabTwoState copyWith({SelectCabTwoModel? selectCabTwoModelObj}) {
    return SelectCabTwoState(
      selectCabTwoModelObj: selectCabTwoModelObj ?? this.selectCabTwoModelObj,
    );
  }
}
