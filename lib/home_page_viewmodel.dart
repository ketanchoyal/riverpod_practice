import 'package:riverpod_practice/state_management/base_view_models.dart';

class HomepageViewModel extends BaseViewModel {
  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    print(_counter);
    notifyListeners();
  }
}
