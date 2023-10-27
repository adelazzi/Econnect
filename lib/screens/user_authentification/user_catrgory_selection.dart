import 'package:econnect/screens/user_authentification/user_info_signin.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:econnect/utils/app_style.dart';
import 'package:econnect/widgets/main_button.dart';
import 'package:econnect/widgets/user_card.dart';

class UserCategory extends StatelessWidget {
  const UserCategory({Key? key}) : super(key: key);

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
              "Start Your Journey",
              style: Styles.headLine1.copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            Gap((15)),
            Text(
              "Choose your role to begin Contributing",
              style: Styles.headLineMedium
                  .copyWith(fontSize: 16, color: Styles.textColor),
              textAlign: TextAlign.center,
            ),
            Gap((50)),
            const UserCard(
              profession: 'Volunteer',
              professionDescription: "Join and make a difference.",
              userCategoryImage: 'volunteer.png',
            ),
            const UserCard(
              profession: 'Organization',
              professionDescription: "Lead events to make changes",
              userCategoryImage: 'organization.png',
            ),
            const Spacer(),
            const MainButton(buttonText: 'Continue',nextWidget: UserInfoSignIn(),),
          ],
        ),
      ),
    );
  }
}
