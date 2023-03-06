import 'package:learn_mobx/data/user_model.dart';
import 'package:learn_mobx/services/user_service.dart';
import 'package:mobx/mobx.dart';
part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  /// Cách thứ nhất để call api khởi tạo là call qua hàm khởi tạo store và chỉ call 1 lần
  /// áp dụng cho việc khởi tạo dữ liệu ví dụ như khởi tạo giá trị mặc định của 1 biến trong mobx
  /// call api cho những trang chỉ fecth api 1 lần
  _UserStore() {
    // init();
  }
  void init() {
    fetchUsers();
  }

  final UserService _service = UserService();

  @observable
  ObservableFuture<List<UserModel>> usersFuture = ObservableFuture.value([]);

  @action
  Future<List<UserModel>> fetchUsers({int? page}) {
    final dynamic data =
        _service.getUser(url: "https://reqres.in/api/users?page=${page ?? 1}");
    usersFuture = ObservableFuture(data);
    return usersFuture;
  }

  @action
  Future<List<UserModel>> fetchUsers1({int? page}) {
    final dynamic data =
        _service.getUser(url: "https://reqres.in/api/users?page=2");
    usersFuture = ObservableFuture(data);
    return usersFuture;
  }
}
