// ignore_for_file: must_be_immutable

part of 'e_receipt_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EReceipt widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EReceiptEvent extends Equatable {}

/// Event that is dispatched when the EReceipt widget is first created.
class EReceiptInitialEvent extends EReceiptEvent {
  @override
  List<Object?> get props => [];
}
