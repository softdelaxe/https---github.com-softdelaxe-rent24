import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/transaction_history_one_screen/models/transaction_history_one_model.dart';
part 'transaction_history_one_event.dart';
part 'transaction_history_one_state.dart';

/// A bloc that manages the state of a TransactionHistoryOne according to the event that is dispatched to it.
class TransactionHistoryOneBloc
    extends Bloc<TransactionHistoryOneEvent, TransactionHistoryOneState> {
  TransactionHistoryOneBloc(TransactionHistoryOneState initialState)
      : super(initialState) {
    on<TransactionHistoryOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionHistoryOneInitialEvent event,
    Emitter<TransactionHistoryOneState> emit,
  ) async {}
}
