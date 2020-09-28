import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_manage/Providers/counterProvider.dart';

class Decrement extends StatefulWidget {
  @override
  _DecrementState createState() => _DecrementState();
}

class _DecrementState extends State<Decrement> {
  @override
  Widget build(BuildContext context) {
    final CounterProvider counterProvider =
        Provider.of<CounterProvider>(context);

    return FlatButton.icon(
      onPressed: () => counterProvider.decrement(),
      icon: Icon(Icons.remove),
      label: Text('Decrement'),
    );
  }
}
