// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserStore on _UserStore, Store {
  late final _$usersFutureAtom =
      Atom(name: '_UserStore.usersFuture', context: context);

  @override
  ObservableFuture<List<UserModel>> get usersFuture {
    _$usersFutureAtom.reportRead();
    return super.usersFuture;
  }

  @override
  set usersFuture(ObservableFuture<List<UserModel>> value) {
    _$usersFutureAtom.reportWrite(value, super.usersFuture, () {
      super.usersFuture = value;
    });
  }

  late final _$_UserStoreActionController =
      ActionController(name: '_UserStore', context: context);

  @override
  Future<List<UserModel>> fetchUsers({int? page}) {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.fetchUsers');
    try {
      return super.fetchUsers(page: page);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<List<UserModel>> fetchUsers1({int? page}) {
    final _$actionInfo = _$_UserStoreActionController.startAction(
        name: '_UserStore.fetchUsers1');
    try {
      return super.fetchUsers1(page: page);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
usersFuture: ${usersFuture}
    ''';
  }
}
