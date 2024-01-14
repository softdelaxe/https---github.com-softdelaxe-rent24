// ignore_for_file: must_be_immutable

part of 'transaction_history_bloc.dart';

/// Represents the state of TransactionHistory in the application.
class TransactionHistoryState extends Equatable {
  TransactionHistoryState({this.transactionHistoryModelObj});

  TransactionHistoryModel? transactionHistoryModelObj;

  @override
  List<Object?> get props => [
        transactionHistoryModelObj,
      ];
  TransactionHistoryState copyWith(
      {TransactionHistoryModel? transactionHistoryModelObj}) {
    return TransactionHistoryState(
      transactionHistoryModelObj:
          transactionHistoryModelObj ?? this.transactionHistoryModelObj,
    );
  }
}
