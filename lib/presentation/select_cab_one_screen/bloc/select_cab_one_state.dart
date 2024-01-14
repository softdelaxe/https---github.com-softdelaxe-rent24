// ignore_for_file: must_be_immutable

part of 'select_cab_one_bloc.dart';

/// Represents the state of SelectCabOne in the application.
class SelectCabOneState extends Equatable {
  SelectCabOneState({this.selectCabOneModelObj});

  SelectCabOneModel? selectCabOneModelObj;

  @override
  List<Object?> get props => [
        selectCabOneModelObj,
      ];
  SelectCabOneState copyWith({SelectCabOneModel? selectCabOneModelObj}) {
    return SelectCabOneState(
      selectCabOneModelObj: selectCabOneModelObj ?? this.selectCabOneModelObj,
    );
  }
}
