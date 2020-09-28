import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_manage/Pages/counterPage.dart';
import 'package:provider_counter_manage/Providers/counterProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: missing_required_param
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>.value(
          value: CounterProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterPage(),
      ),
    );
  }
}
