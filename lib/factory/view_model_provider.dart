import 'package:fmvvm_pixelbox/factory/factory.dart';
import 'package:fmvvm_pixelbox/factory/view_model.dart';

class ViewModelProviders {
  static T of<T extends ViewModel>(Factory factory) {
    return factory.create() as T;
  }
}