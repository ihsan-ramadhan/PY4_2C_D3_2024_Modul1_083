// File: lib/counter_view.dart

import 'package:flutter/material.dart';
import 'counter_controller.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});
  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final CounterController _controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LogBook: Task 2 (History)")),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Total Hitungan:"),
              Text('${_controller.value}', style: const TextStyle(fontSize: 40)),

              const SizedBox(height: 20),
              const Text("Atur Besaran Step:"),
              
              SizedBox(
                width: 300,
                child: Slider(
                  value: _controller.step.toDouble(),
                  min: 1,
                  max: 10,
                  divisions: 9,
                  label: _controller.step.toString(),
                  onChanged: (newValue) {
                    setState(() {
                      _controller.setStep(newValue.toInt());
                    });
                  },
                ),
              ),
              
              Text(
                "Step saat ini: ${_controller.step}", 
                style: const TextStyle(fontWeight: FontWeight.bold)
              ),

              const SizedBox(height: 30),
              const Divider(thickness: 2), // Garis pemisah
              const Text(
                "Riwayat:", 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
              ),
              const SizedBox(height: 10),

              if (_controller.history.isEmpty)
                const Text("Belum ada aktivitas.", style: TextStyle(color: Colors.grey))
              else
                ..._controller.history.map((log) => Card(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(log),
                  ),
                )),
            ],
          ),
        ),
      ),
      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => setState(() => _controller.decrement()),
            backgroundColor: Colors.red,
            tooltip: 'Kurang',
            child: const Icon(Icons.remove),
          ),
          
          const SizedBox(width: 10),

          FloatingActionButton(
            onPressed: () => setState(() => _controller.reset()),
            backgroundColor: Colors.grey,
            tooltip: 'Reset',
            child: const Icon(Icons.refresh),
          ),

          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => setState(() => _controller.increment()),
            backgroundColor: Colors.green,
            tooltip: 'Tambah',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}