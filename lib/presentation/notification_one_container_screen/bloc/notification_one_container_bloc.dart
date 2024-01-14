import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/notification_one_container_screen/models/notification_one_container_model.dart';
part 'notification_one_container_event.dart';
part 'notification_one_container_state.dart';

/// A bloc that manages the state of a NotificationOneContainer according to the event that is dispatched to it.
class NotificationOneContainerBloc
    extends Bloc<NotificationOneContainerEvent, NotificationOneContainerState> {
  NotificationOneContainerBloc(NotificationOneContainerState initialState)
      : super(initialState) {
    on<NotificationOneContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationOneContainerInitialEvent event,
    Emitter<NotificationOneContainerState> emit,
  ) async {}
}
