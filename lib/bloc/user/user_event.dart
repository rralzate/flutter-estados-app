part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final Usuario user;
  ActivateUser(this.user);
}

class ChangeUseAgeEvent extends UserEvent {
  final int age;

  ChangeUseAgeEvent(this.age);
}

class AddProfessionEven extends UserEvent {
  final String profession;

  AddProfessionEven(this.profession);
}

class DeleteUserEvent extends UserEvent {}
