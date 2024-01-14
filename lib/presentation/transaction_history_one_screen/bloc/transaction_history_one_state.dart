// ignore_for_file: must_be_immutable

part of 'transaction_history_one_bloc.dart';

/// Represents the state of TransactionHistoryOne in the application.
class TransactionHistoryOneState extends Equatable {
  TransactionHistoryOneState({this.transactionHistoryOneModelObj});

  TransactionHistoryOneModel? transactionHistoryOneModelObj;

  @override
  List<Object?> get props => [
        transactionHistoryOneModelObj,
      ];
  TransactionHistoryOneState copyWith(
      {TransactionHistoryOneModel? transactionHistoryOneModelObj}) {
    return TransactionHistoryOneState(
      transactionHistoryOneModelObj:
          transactionHistoryOneModelObj ?? this.transactionHistoryOneModelObj,
    );
  }
}
