import 'dart:math';

import 'package:mobx/mobx.dart';
part 'dice_screen_store.g.dart';

class DiceScreenStore = _DiceScreenStore with _$DiceScreenStore;

abstract class _DiceScreenStore with Store {
  @observable
  int left = Random().nextInt(6) + 1;

  @observable
  int right = Random().nextInt(6) + 1;

  @computed
  int get total => right + left;

  @action
  void roll() {
    left = Random().nextInt(6) + 1;

    right = Random().nextInt(6) + 1;
  }
}
