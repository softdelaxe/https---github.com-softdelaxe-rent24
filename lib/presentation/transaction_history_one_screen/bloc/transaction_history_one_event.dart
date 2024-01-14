// ignore_for_file: must_be_immutable

part of 'transaction_history_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionHistoryOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionHistoryOneEvent extends Equatable {}

/// Event that is dispatched when the TransactionHistoryOne widget is first created.
class TransactionHistoryOneInitialEvent extends TransactionHistoryOneEvent {
  @override
  List<Object?> get props => [];
}
