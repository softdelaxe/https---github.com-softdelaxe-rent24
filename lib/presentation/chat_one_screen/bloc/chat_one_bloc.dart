import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/chat_one_screen/models/chat_one_model.dart';
part 'chat_one_event.dart';
part 'chat_one_state.dart';

/// A bloc that manages the state of a ChatOne according to the event that is dispatched to it.
class ChatOneBloc extends Bloc<ChatOneEvent, ChatOneState> {
  ChatOneBloc(ChatOneState initialState) : super(initialState) {
    on<ChatOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatOneInitialEvent event,
    Emitter<ChatOneState> emit,
  ) async {}
}
