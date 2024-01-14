// ignore_for_file: must_be_immutable

part of 'select_cab_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SelectCab widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectCabEvent extends Equatable {}

/// Event that is dispatched when the SelectCab widget is first created.
class SelectCabInitialEvent extends SelectCabEvent {
  @override
  List<Object?> get props => [];
}
