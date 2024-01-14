import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/e_receipt_screen/models/e_receipt_model.dart';
part 'e_receipt_event.dart';
part 'e_receipt_state.dart';

/// A bloc that manages the state of a EReceipt according to the event that is dispatched to it.
class EReceiptBloc extends Bloc<EReceiptEvent, EReceiptState> {
  EReceiptBloc(EReceiptState initialState) : super(initialState) {
    on<EReceiptInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EReceiptInitialEvent event,
    Emitter<EReceiptState> emit,
  ) async {}
}
