class CounterController {
  int _counter = 0; // Variabel private (Enkapsulasi)
  int _step = 1; 

  int get value => _counter; // Getter untuk akses data
  int get step => _step;

  void setStep(int value) {_step = value;}
  void increment() => _counter += _step;
  void decrement() { if (_counter > 0) _counter -= _step; }
  void reset() => _counter = 0;
}