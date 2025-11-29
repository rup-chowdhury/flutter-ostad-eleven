import 'package:flutter/material.dart';
import 'package:state_management_provider/counter_notifier.dart';

class CounterInheritedWidget extends InheritedWidget {
  CounterNotifier counterNotifier;

  CounterInheritedWidget({
    super.key,
    required this.counterNotifier,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
