// ignore_for_file: must_be_immutable

part of 'face_scan_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FaceScan widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FaceScanEvent extends Equatable {}

/// Event that is dispatched when the FaceScan widget is first created.
class FaceScanInitialEvent extends FaceScanEvent {
  @override
  List<Object?> get props => [];
}
