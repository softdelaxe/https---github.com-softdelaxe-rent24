import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/transaction_history_screen/models/transaction_history_model.dart';
part 'transaction_history_event.dart';
part 'transaction_history_state.dart';

/// A bloc that manages the state of a TransactionHistory according to the event that is dispatched to it.
class TransactionHistoryBloc
    extends Bloc<TransactionHistoryEvent, TransactionHistoryState> {
  TransactionHistoryBloc(TransactionHistoryState initialState)
      : super(initialState) {
    on<TransactionHistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionHistoryInitialEvent event,
    Emitter<TransactionHistoryState> emit,
  ) async {}
}
