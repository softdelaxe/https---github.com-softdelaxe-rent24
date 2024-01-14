// ignore_for_file: must_be_immutable

part of 'e_receipt_bloc.dart';

/// Represents the state of EReceipt in the application.
class EReceiptState extends Equatable {
  EReceiptState({this.eReceiptModelObj});

  EReceiptModel? eReceiptModelObj;

  @override
  List<Object?> get props => [
        eReceiptModelObj,
      ];
  EReceiptState copyWith({EReceiptModel? eReceiptModelObj}) {
    return EReceiptState(
      eReceiptModelObj: eReceiptModelObj ?? this.eReceiptModelObj,
    );
  }
}
