import 'package:mobx/mobx.dart';

part 'home_screen_store.g.dart';

class HomeScreenStore = _HomeScreenStore with _$HomeScreenStore;

abstract class _HomeScreenStore with Store {
  /// biến < hay còn gọi là state> thì được khai báo dưới dạng observable
  @observable
  int count = 0;

  @computed
  int get sum => count + 2;

  /// action hay còn gọi là function để thay đổi trạng thái của biến khi người dùng thao tác trên UI
  @action
  void increment() {
    // count = count + 1;
    // count ++ laf cộng giá trị sau khi rebuild
    count++;
    // ++count là cộng giá trị trực tiếp tại thời điểm đó
    // ++count;
  }
}
