import 'dart:async';

class Counter {
  int _time;

  Counter() {
    startTimer();
  }

  Timer _timer;
  void startTimer() {
    _time = 0;
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _time++;
    });
  }

  int stopTimer() {
    /**
     * Stops timer and returns time between it starts.
     */
    _timer.cancel();
    return _time;
  }
}
