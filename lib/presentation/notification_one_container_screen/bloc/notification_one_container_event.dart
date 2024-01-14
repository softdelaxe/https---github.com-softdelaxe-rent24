// ignore_for_file: must_be_immutable

part of 'notification_one_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationOneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationOneContainerEvent extends Equatable {}

/// Event that is dispatched when the NotificationOneContainer widget is first created.
class NotificationOneContainerInitialEvent
    extends NotificationOneContainerEvent {
  @override
  List<Object?> get props => [];
}
