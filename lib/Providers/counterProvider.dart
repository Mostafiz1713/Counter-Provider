import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
	int _counter = 0;
	int get counter => _counter;

	set counter(int val){
		_counter = val;
		notifyListeners();
	}
}