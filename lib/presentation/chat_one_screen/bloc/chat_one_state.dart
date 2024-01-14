// ignore_for_file: must_be_immutable

part of 'chat_one_bloc.dart';

/// Represents the state of ChatOne in the application.
class ChatOneState extends Equatable {
  ChatOneState({this.chatOneModelObj});

  ChatOneModel? chatOneModelObj;

  @override
  List<Object?> get props => [
        chatOneModelObj,
      ];
  ChatOneState copyWith({ChatOneModel? chatOneModelObj}) {
    return ChatOneState(
      chatOneModelObj: chatOneModelObj ?? this.chatOneModelObj,
    );
  }
}
