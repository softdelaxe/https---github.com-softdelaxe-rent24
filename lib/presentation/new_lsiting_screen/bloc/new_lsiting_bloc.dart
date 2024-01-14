import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/selectstatecomponent_item_model.dart';
import 'package:rent24/presentation/new_lsiting_screen/models/new_lsiting_model.dart';
part 'new_lsiting_event.dart';
part 'new_lsiting_state.dart';

/// A bloc that manages the state of a NewLsiting according to the event that is dispatched to it.
class NewLsitingBloc extends Bloc<NewLsitingEvent, NewLsitingState> {
  NewLsitingBloc(NewLsitingState initialState) : super(initialState) {
    on<NewLsitingInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<NewLsitingState> emit,
  ) {
    emit(state.copyWith(electricity: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<NewLsitingState> emit,
  ) {
    emit(state.copyWith(water: event.value));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<NewLsitingState> emit,
  ) {
    emit(state.copyWith(packingSpace: event.value));
  }

  List<SelectstatecomponentItemModel> fillSelectstatecomponentItemList() {
    return [
      SelectstatecomponentItemModel(
          selectedState: "Select State", stateName: "Anambra"),
      SelectstatecomponentItemModel(
          selectedState: "Select Area", stateName: "Awka"),
      SelectstatecomponentItemModel(
          selectedState: "Duration", stateName: "Weekly")
    ];
  }

  _onInitialize(
    NewLsitingInitialEvent event,
    Emitter<NewLsitingState> emit,
  ) async {
    emit(state.copyWith(electricity: false, water: false, packingSpace: false));
    emit(state.copyWith(
        newLsitingModelObj: state.newLsitingModelObj?.copyWith(
            selectstatecomponentItemList: fillSelectstatecomponentItemList())));
  }
}
