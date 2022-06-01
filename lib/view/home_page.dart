import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final ValueNotifier<int> _value = ValueNotifier(0);
  final ValueNotifier<String> _string = ValueNotifier('Gunjon Roy');

  // int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder(
            valueListenable: _value,
            builder: (
              context,
              value,
              child,
            ) {
              return Container(
                color: Colors.deepPurple,
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Center(child: Text("${_value.value}")),
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: _string,
            builder: (
                context,
                value,
                child,
                ) {
              return Container(
                color: Colors.deepPurple,
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Center(child: Text(_string.value)),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _value.value++;
          print(_value.value);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
