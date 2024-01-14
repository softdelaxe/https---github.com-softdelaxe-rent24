// ignore_for_file: must_be_immutable

part of 'new_lsiting_one_bloc.dart';

/// Represents the state of NewLsitingOne in the application.
class NewLsitingOneState extends Equatable {
  NewLsitingOneState({
    this.searchController,
    this.newLsitingOneModelObj,
  });

  TextEditingController? searchController;

  NewLsitingOneModel? newLsitingOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        newLsitingOneModelObj,
      ];
  NewLsitingOneState copyWith({
    TextEditingController? searchController,
    NewLsitingOneModel? newLsitingOneModelObj,
  }) {
    return NewLsitingOneState(
      searchController: searchController ?? this.searchController,
      newLsitingOneModelObj:
          newLsitingOneModelObj ?? this.newLsitingOneModelObj,
    );
  }
}
