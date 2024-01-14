// ignore_for_file: must_be_immutable

part of 'select_cab_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SelectCabOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectCabOneEvent extends Equatable {}

/// Event that is dispatched when the SelectCabOne widget is first created.
class SelectCabOneInitialEvent extends SelectCabOneEvent {
  @override
  List<Object?> get props => [];
}
