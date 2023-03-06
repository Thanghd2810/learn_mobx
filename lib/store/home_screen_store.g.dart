// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenStore on _HomeScreenStore, Store {
  Computed<int>? _$sumComputed;

  @override
  int get sum => (_$sumComputed ??=
          Computed<int>(() => super.sum, name: '_HomeScreenStore.sum'))
      .value;
  Computed<int>? _$sum1Computed;

  @override
  int get sum1 => (_$sum1Computed ??=
          Computed<int>(() => super.sum1, name: '_HomeScreenStore.sum1'))
      .value;

  late final _$countAtom =
      Atom(name: '_HomeScreenStore.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$count1Atom =
      Atom(name: '_HomeScreenStore.count1', context: context);

  @override
  int get count1 {
    _$count1Atom.reportRead();
    return super.count1;
  }

  @override
  set count1(int value) {
    _$count1Atom.reportWrite(value, super.count1, () {
      super.count1 = value;
    });
  }

  late final _$_HomeScreenStoreActionController =
      ActionController(name: '_HomeScreenStore', context: context);

  @override
  void increment() {
    final _$actionInfo = _$_HomeScreenStoreActionController.startAction(
        name: '_HomeScreenStore.increment');
    try {
      return super.increment();
    } finally {
      _$_HomeScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$_HomeScreenStoreActionController.startAction(
        name: '_HomeScreenStore.decrement');
    try {
      return super.decrement();
    } finally {
      _$_HomeScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
count: ${count},
count1: ${count1},
sum: ${sum},
sum1: ${sum1}
    ''';
  }
}
