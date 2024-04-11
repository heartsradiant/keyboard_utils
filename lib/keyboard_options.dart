class KeyboardOptions {
  KeyboardOptions({required this.isKeyboardOpen, required this.keyboardHeight});

  final bool isKeyboardOpen;
  final double keyboardHeight;

  Map<String, dynamic> toJson() {
    return {
      'isKeyboardOpen': isKeyboardOpen,
      'keyboardHeight': keyboardHeight,
    };
  }

  factory KeyboardOptions.fromJson(Map<String, dynamic> json) {
    final isKeyboardOpen = json['isKeyboardOpen'];
    final keyboardHeight = json['keyboardHeight'];

    if (isKeyboardOpen == null || keyboardHeight == null) {
      throw const FormatException(
          'Invalid value for isKeyboardOpen or keyboardHeight');
    }

    if (isKeyboardOpen is! bool || keyboardHeight is! double) {
      throw const FormatException(
          'Invalid type for isKeyboardOpen or keyboardHeight');
    }

    return KeyboardOptions(
      isKeyboardOpen: isKeyboardOpen,
      keyboardHeight: keyboardHeight.toDouble(),
    );
  }
}
