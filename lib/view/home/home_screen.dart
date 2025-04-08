import 'package:chat_front/view/home/widgets/chat_history_set_btn.dart';
import 'package:chat_front/view/home/widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../constants/app_paddings.dart';
import '../../constants/text_style.dart';
import '../../widgets/custom_app_bar.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.noTitle(leading: false, showDefaultAction: true),

      body: SafeArea(
        child: Container(
          padding: AppPaddings.a12,
          child: Column(
            children: [
              ChatHistorySetButtons(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Suggestions', style: appBarTextStyle),
                  TextButton(
                    onPressed: () {},
                    child: Text('View all', style: mainBtnTextStyle),
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
