import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_paddings.dart';

ButtonStyle screenButtonStyle = ElevatedButton.styleFrom(
  padding: AppPaddings.v16,
  backgroundColor: AppColors.primary,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  elevation: 0,
  shadowColor: null,
);
