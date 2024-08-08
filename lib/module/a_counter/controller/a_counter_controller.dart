import '../view/a_counter_view.dart';

class ACounterController {
  static late ACounterController instance;
  ACounterView? view;

  // LOGIC SIMPLE COUNTER!
  int counter = 0;
  void updateCounter(Function() updateUI) {
    counter++;
    updateUI();
  }
}
