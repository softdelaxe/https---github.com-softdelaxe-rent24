// ignore_for_file: must_be_immutable

part of 'call_to_action_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CallToActionOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CallToActionOneEvent extends Equatable {}

/// Event that is dispatched when the CallToActionOne widget is first created.
class CallToActionOneInitialEvent extends CallToActionOneEvent {
  @override
  List<Object?> get props => [];
}
