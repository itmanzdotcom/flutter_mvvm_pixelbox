import 'package:fmvvm_pixelbox/api/api_service.dart';
import 'package:fmvvm_pixelbox/factory/user_view_model_factory.dart';
import 'package:fmvvm_pixelbox/repository/user_repository.dart';

class Injector {

  static ApiService provideApiService() {
    return ApiService();
  }

  static UserViewModelFactory provideUserViewModelFactory() {
    return UserViewModelFactory(provideUserRepository());
  }

  static UserRepository provideUserRepository() {
    return UserRepository(provideApiService());
  }
}