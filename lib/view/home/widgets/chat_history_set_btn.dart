import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../constants/app_colors.dart';

class ChatHistorySetButtons extends HookWidget {
  final void Function()? onChatPressed;
  final void Function()? onHistoryPressed;
  final void Function()? onSettingsPressed;

  const ChatHistorySetButtons({
    super.key,
    this.onChatPressed,
    this.onHistoryPressed,
    this.onSettingsPressed,
  });

  @override
  Widget build(BuildContext context) {
    final selectedButtonIndex = useState<int?>(null);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildButton(
          "Chat",
          Icons.chat,
          onChatPressed,
          0,
          selectedButtonIndex, //
        ),
        _buildButton(
          "History",
          Icons.history,
          onHistoryPressed,
          1,
          selectedButtonIndex,
        ),
        _buildButton(
          "Settings",
          Icons.settings,
          onSettingsPressed,
          2,
          selectedButtonIndex,
        ),
      ],
    );
  }

  Widget _buildButton(
    String label,
    IconData icon,
    void Function()? onPressed,
    int index,
    ValueNotifier<int?> selectedButtonIndex,
  ) {
    bool isSelected = selectedButtonIndex.value == index;

    return ElevatedButton.icon(
      onPressed: () {
        selectedButtonIndex.value = index;
        if (onPressed != null) {
          onPressed();
        }
      },
      icon: Icon(icon, color: AppColors.primary),
      label: Text(label, style: TextStyle(color: AppColors.primary)),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          isSelected ? AppColors.blue : AppColors.secondaryLight,
        ),
        foregroundColor: WidgetStateProperty.all(
          AppColors.primary,
        ), // Text color
      ),
    );
  }
}
