part of 'button_bloc.dart';

@immutable
abstract class ButtonState {}

class ButtonInitial extends ButtonState {}

class ButtonPressedState extends ButtonState {}
