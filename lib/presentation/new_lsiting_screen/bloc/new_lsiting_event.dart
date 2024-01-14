// ignore_for_file: must_be_immutable

part of 'new_lsiting_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewLsiting widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewLsitingEvent extends Equatable {}

/// Event that is dispatched when the NewLsiting widget is first created.
class NewLsitingInitialEvent extends NewLsitingEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends NewLsitingEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends NewLsitingEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox2Event extends NewLsitingEvent {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
