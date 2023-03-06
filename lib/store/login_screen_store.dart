import 'dart:ui';

import 'package:mobx/mobx.dart';
// ignore: import_of_legacy_library_into_null_safe

// import 'package:validators2/validators2.dart';

import '../utils/validator.dart';

// import 'package:validators2/validators.dart';

part 'login_screen_store.g.dart';

// ignore: library_private_types_in_public_api
class LoginScreenStore = _LoginScreenStore with _$LoginScreenStore;

abstract class _LoginScreenStore with Store {
  final LoginErrorState error = LoginErrorState();
  @observable
  String name = '';

  @observable
  String email = '';

  @observable
  String password = '';
  @action
  void validatePassword(String value) {
    error.password = NPValidator.error(value, SpeciesType.PASSWORD_1);
  }

  @action
  void validateEmail(String value) {
    error.email = NPValidator.error(value, SpeciesType.EMAIL);
  }

  void validateAll() {
    validatePassword(password);
    validateEmail(email);
    // validateUsername(name);
  }
}

class LoginErrorState = _LoginErrorState with _$LoginErrorState;

abstract class _LoginErrorState with Store {
  @observable
  String? username;

  @observable
  String? email;

  @observable
  String? password;

  @computed
  bool get hasErrors => username != null || email != null || password != null;
}
