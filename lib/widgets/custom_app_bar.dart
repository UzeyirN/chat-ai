import 'package:chat_front/utils/constants/app_colors.dart';
import 'package:chat_front/utils/constants/text_style.dart';
import 'package:chat_front/view/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool? showCancelButton;
  final bool? leading;
  final bool showDefaultAction;
  final Color? bgColor, backButtonColor;

  const CustomAppBar(
    this.title, {
    super.key,
    this.showCancelButton,
    this.leading,
    this.showDefaultAction = false,
    this.bgColor,
    this.backButtonColor,
  });

  const CustomAppBar.noTitle({
    super.key,
    this.showCancelButton,
    this.leading,
    this.showDefaultAction = false,
    this.bgColor,
    this.backButtonColor,
  }) : title = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor ?? AppColors.secondary,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ), // To accommodate the status bar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Leading (Back button or title)
          leading == true
              ? IconButton(
                onPressed:
                    () =>
                        Navigator.canPop(context)
                            ? Navigator.pop(context)
                            : null,
                icon: Icon(
                  Icons.cancel_outlined,
                  color: backButtonColor ?? AppColors.primary,
                  size: 30, // Size of the cancel button
                ),
              )
              : Text(
                "Chat AI",
                style: homeTitle, // Increase font size
              ),
          // Title
          Expanded(
            child: Center(
              child: Text(
                title,
                style: appBarTextStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          // Actions (If any)
          if (showDefaultAction)
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                );
              },
              icon: Icon(Icons.more_horiz, size: 24, color: AppColors.primary),
            ),
        ],
      ),
    );
  }
}
