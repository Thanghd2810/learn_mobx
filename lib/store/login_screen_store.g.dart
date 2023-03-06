// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginScreenStore on _LoginScreenStore, Store {
  late final _$nameAtom =
      Atom(name: '_LoginScreenStore.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_LoginScreenStore.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_LoginScreenStore.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$_LoginScreenStoreActionController =
      ActionController(name: '_LoginScreenStore', context: context);

  @override
  void validatePassword(String value) {
    final _$actionInfo = _$_LoginScreenStoreActionController.startAction(
        name: '_LoginScreenStore.validatePassword');
    try {
      return super.validatePassword(value);
    } finally {
      _$_LoginScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(String value) {
    final _$actionInfo = _$_LoginScreenStoreActionController.startAction(
        name: '_LoginScreenStore.validateEmail');
    try {
      return super.validateEmail(value);
    } finally {
      _$_LoginScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
password: ${password}
    ''';
  }
}

mixin _$LoginErrorState on _LoginErrorState, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_LoginErrorState.hasErrors'))
          .value;

  late final _$usernameAtom =
      Atom(name: '_LoginErrorState.username', context: context);

  @override
  String? get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String? value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_LoginErrorState.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_LoginErrorState.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  @override
  String toString() {
    return '''
username: ${username},
email: ${email},
password: ${password},
hasErrors: ${hasErrors}
    ''';
  }
}
