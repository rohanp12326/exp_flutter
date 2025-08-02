import 'package:flutter/foundation.dart';

class ErrorHandler {
  static void handleError(Object error, [StackTrace? stackTrace]) {
    debugPrint(error.toString());
  }
}
