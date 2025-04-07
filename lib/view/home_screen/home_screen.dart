import 'package:chat_front/utils/constants/app_colors.dart';
import 'package:chat_front/utils/widgets/home/chat_history_set_btn.dart';
import 'package:chat_front/view/home_screen/home_card.dart';
import 'package:chat_front/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              CustomAppBar.noTitle(leading: false, showDefaultAction: true),
              ChatHistorySetButtons(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Suggestions',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View all',
                      style: TextStyle(
                        color: AppColors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ], //
              ),
              HomeCard(),
            ], //
          ),
        ), //
      ),
    );
  }
}
