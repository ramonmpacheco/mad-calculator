class Engine {
  String _value = '0';

  String get value {
    return _value;
  }

  void applyCommand(String command) {
    if (command == 'AC') {
      _allClear();
      return;
    }
    _value += command;
  }

  _allClear() {
    _value = '0';
  }
}
