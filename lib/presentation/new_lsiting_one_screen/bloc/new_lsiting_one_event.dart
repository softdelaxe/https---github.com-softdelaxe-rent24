// ignore_for_file: must_be_immutable

part of 'new_lsiting_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewLsitingOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewLsitingOneEvent extends Equatable {}

/// Event that is dispatched when the NewLsitingOne widget is first created.
class NewLsitingOneInitialEvent extends NewLsitingOneEvent {
  @override
  List<Object?> get props => [];
}
