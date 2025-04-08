import 'package:chat_front/view/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? showCancelButton;
  final bool? leading;
  final bool showDefaultAction, showBottomBorder;
  final Color? bgColor, backButtonColor;

  const CustomAppBar(
    this.title, {
    super.key,
    this.showCancelButton,
    this.leading,
    this.showDefaultAction = false,
    this.showBottomBorder = false,
    this.bgColor,
    this.backButtonColor,
  });

  const CustomAppBar.noTitle({
    super.key,
    this.showCancelButton,
    this.leading,
    this.showDefaultAction = false,
    this.showBottomBorder = false,
    this.bgColor,
    this.backButtonColor,
  }) : title = '';

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor ?? AppColors.secondary,
        border:
            showBottomBorder
                ? Border(
                  bottom: BorderSide(
                    color: AppColors.secondaryLight,
                    width: 0.5,
                  ),
                )
                : null,
      ),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        right: 15,
        left: 15,
      ),

      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leading == true
                ? IconButton(
                  onPressed:
                      () =>
                          Navigator.canPop(context)
                              ? Navigator.pop(context)
                              : null,
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: backButtonColor ?? AppColors.primary,
                    size: 30,
                  ),
                )
                : Text("Chat AI", style: homeTitle),
            Expanded(
              child: Center(
                child: Text(
                  title,
                  style: appBarTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            if (showDefaultAction)
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomeScreen(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.more_horiz,
                  size: 24,
                  color: AppColors.primary,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
