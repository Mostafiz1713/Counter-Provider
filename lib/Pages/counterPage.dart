import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_manage/Providers/counterProvider.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final CounterProvider counterProvider =
        Provider.of<CounterProvider>(context);

    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            counterProvider.counter.toString(),
          ),
        ),
      ),
    );
  }
}
