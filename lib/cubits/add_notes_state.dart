import 'package:flutter/material.dart';

@immutable
abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoading extends AddNotesState {}

class AddNotesSuccessed extends AddNotesState {}

class AddNotesFailure extends AddNotesState {
  final String errorMessage;

  AddNotesFailure({ required this.errorMessage});
}
