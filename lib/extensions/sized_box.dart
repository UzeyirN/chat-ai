import 'package:flutter/cupertino.dart';

extension SizedBoxExtensions on num {
  SizedBox get h => SizedBox(height: toDouble());
  SizedBox get w => SizedBox(width: toDouble());
}
