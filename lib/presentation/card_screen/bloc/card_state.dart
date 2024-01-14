// ignore_for_file: must_be_immutable

part of 'card_bloc.dart';

/// Represents the state of Card in the application.
class CardState extends Equatable {
  CardState({this.cardModelObj});

  CardModel? cardModelObj;

  @override
  List<Object?> get props => [
        cardModelObj,
      ];
  CardState copyWith({CardModel? cardModelObj}) {
    return CardState(
      cardModelObj: cardModelObj ?? this.cardModelObj,
    );
  }
}
