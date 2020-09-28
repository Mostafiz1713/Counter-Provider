import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_manage/Pages/decrement.dart';
import 'package:provider_counter_manage/Pages/increment.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current Value : ' + counterProvider.counter.toString(),
              ),
              Increment(),
              Decrement(),
            ],
          ),
        ),
      ),
    );
  }
}
