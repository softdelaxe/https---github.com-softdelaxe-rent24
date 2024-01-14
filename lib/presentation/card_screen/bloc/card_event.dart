// ignore_for_file: must_be_immutable

part of 'card_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Card widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CardEvent extends Equatable {}

/// Event that is dispatched when the Card widget is first created.
class CardInitialEvent extends CardEvent {
  @override
  List<Object?> get props => [];
}
