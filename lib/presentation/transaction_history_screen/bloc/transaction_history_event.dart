// ignore_for_file: must_be_immutable

part of 'transaction_history_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionHistory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionHistoryEvent extends Equatable {}

/// Event that is dispatched when the TransactionHistory widget is first created.
class TransactionHistoryInitialEvent extends TransactionHistoryEvent {
  @override
  List<Object?> get props => [];
}
