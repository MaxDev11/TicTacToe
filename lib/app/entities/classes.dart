import 'package:rxdart/rxdart.dart';

class Choice {
  final BehaviorSubject<bool> _choice = BehaviorSubject.seeded(true);

  Stream<bool> get choice$ => _choice.stream;
  bool get choice => _choice.value;

  void oChoice() {
    _choice.add(true);
  }

  void xChoice() {
    _choice.add(false);
  }
}
