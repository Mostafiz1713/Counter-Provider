import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_manage/Providers/counterProvider.dart';

class Increment extends StatefulWidget {
  @override
  _IncrementState createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {
  @override
  Widget build(BuildContext context) {
    final CounterProvider counterProvider =
        Provider.of<CounterProvider>(context);

    return FlatButton.icon(
      onPressed: () => counterProvider.increment(),
      icon: Icon(Icons.add),
      label: Text('Increment'),
    );
  }
}
