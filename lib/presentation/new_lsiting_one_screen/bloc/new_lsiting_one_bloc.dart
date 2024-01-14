import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchylist_item_model.dart';
import 'package:rent24/presentation/new_lsiting_one_screen/models/new_lsiting_one_model.dart';
part 'new_lsiting_one_event.dart';
part 'new_lsiting_one_state.dart';

/// A bloc that manages the state of a NewLsitingOne according to the event that is dispatched to it.
class NewLsitingOneBloc extends Bloc<NewLsitingOneEvent, NewLsitingOneState> {
  NewLsitingOneBloc(NewLsitingOneState initialState) : super(initialState) {
    on<NewLsitingOneInitialEvent>(_onInitialize);
  }

  List<ViewhierarchylistItemModel> fillViewhierarchylistItemList() {
    return [
      ViewhierarchylistItemModel(
          duplexHouseImage: ImageConstant.imgRectangle71,
          duplexHouseText: "Duplex House",
          stFaithEkeAwkaText: "St faith Eke-awka",
          reviewText: "5.1 (115 Reviews)"),
      ViewhierarchylistItemModel(
          duplexHouseImage: ImageConstant.imgRectangle37,
          duplexHouseText: "Dell inspirion",
          stFaithEkeAwkaText: "St faith Eke-awka",
          reviewText: "5.1 (115 Reviews)"),
      ViewhierarchylistItemModel(
          duplexHouseImage: ImageConstant.imgRectangle71133x134,
          duplexHouseText: "Freezer",
          stFaithEkeAwkaText: "St faith Eke-awka",
          reviewText: "5.1 (115 Reviews)")
    ];
  }

  _onInitialize(
    NewLsitingOneInitialEvent event,
    Emitter<NewLsitingOneState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        newLsitingOneModelObj: state.newLsitingOneModelObj?.copyWith(
            viewhierarchylistItemList: fillViewhierarchylistItemList())));
  }
}
