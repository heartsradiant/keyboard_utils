import 'package:flutter/material.dart';
import 'package:keyboard_utils_fork/keyboard_options.dart';

class KeyboardConfigInheritedWidget extends InheritedWidget {
  const KeyboardConfigInheritedWidget(
      {Key? key, this.keyboardConfig, required Widget child})
      : super(key: key, child: child);

  final KeyboardOptions? keyboardConfig;

  @override
  bool updateShouldNotify(KeyboardConfigInheritedWidget oldWidget) {
    return keyboardConfig != oldWidget.keyboardConfig;
  }

  static KeyboardConfigInheritedWidget? of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<KeyboardConfigInheritedWidget>();
}
