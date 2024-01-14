// ignore_for_file: must_be_immutable

part of 'face_completed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FaceCompleted widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FaceCompletedEvent extends Equatable {}

/// Event that is dispatched when the FaceCompleted widget is first created.
class FaceCompletedInitialEvent extends FaceCompletedEvent {
  @override
  List<Object?> get props => [];
}
