import 'package:fmvvm_pixelbox/factory/factory.dart';
import 'package:fmvvm_pixelbox/repository/user_repository.dart';
import 'package:fmvvm_pixelbox/screen/user/user_view_model.dart';

class UserViewModelFactory extends Factory<UserViewModel> {
  UserRepository _userRepository;

  UserViewModelFactory(this._userRepository);

  @override
  UserViewModel create() {
    return UserViewModel(_userRepository);
  }
}