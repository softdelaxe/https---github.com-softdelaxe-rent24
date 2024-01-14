// ignore_for_file: must_be_immutable

part of 'select_cab_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SelectCabTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectCabTwoEvent extends Equatable {}

/// Event that is dispatched when the SelectCabTwo widget is first created.
class SelectCabTwoInitialEvent extends SelectCabTwoEvent {
  @override
  List<Object?> get props => [];
}
