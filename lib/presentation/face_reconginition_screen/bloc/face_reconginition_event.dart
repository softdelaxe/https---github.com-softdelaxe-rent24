// ignore_for_file: must_be_immutable

part of 'face_reconginition_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FaceReconginition widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FaceReconginitionEvent extends Equatable {}

/// Event that is dispatched when the FaceReconginition widget is first created.
class FaceReconginitionInitialEvent extends FaceReconginitionEvent {
  @override
  List<Object?> get props => [];
}
