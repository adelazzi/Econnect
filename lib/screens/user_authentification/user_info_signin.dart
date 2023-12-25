import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:econnect/utils/app_style.dart';
import 'package:econnect/widgets/birthday_field.dart';
import 'package:econnect/widgets/main_button.dart';
import 'package:econnect/widgets/pronouns_dropdown.dart';
import 'package:econnect/widgets/text_input.dart';

class UserInfoSignIn extends StatelessWidget {
  const UserInfoSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: (150),
          bottom: (60),
          left: (10),
          right: (10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Let's Get to Know You",
              style: Styles.headLine1.copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            Gap((15)),
            Text(
              "Help us understand you better by providing some information.",
              style: Styles.headLineMedium
                  .copyWith(fontSize: 16, color: Styles.textColor),
              textAlign: TextAlign.center,
            ),
            Gap((45)),
            Column(
              children: [
                Row(
                  children: [
                    const PronounsDropDown(),
                    Gap((5)),
                    const Expanded(child: TextInput(hintText: 'First Name')),
                  ],
                ),
                const Gap(10),
                const TextInput(hintText: 'Last Name'),
                const Gap(10),
                const DobInputField(),
                const Gap(10),
              ],
            ),
            const MainButton(buttonText: 'Continue'),
          ],
        ),
      ),
    );
  }
}
