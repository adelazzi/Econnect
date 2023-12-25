import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:econnect/utils/FAANG_icon.dart';
import 'package:econnect/utils/app_style.dart';
import 'package:econnect/widgets/main_button.dart';
import 'package:econnect/widgets/text_input.dart';

class EmailSignIn extends StatelessWidget {
  const EmailSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: (20), right: (20), top: (100), bottom: (40)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign In",
              style: Styles.headLine1.copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            Gap((15)),
            Text(
              "Be part of a global community dedicated to saving our planet. Sign up now and start making a difference!",
              style: Styles.headLineMedium
                  .copyWith(fontSize: 16, color: Styles.textColor),
              textAlign: TextAlign.center,
            ),
            Gap((30)),
            Align(
              alignment: Alignment.centerLeft, // Align to the left
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email adress",
                    style: Styles.headLineSmall.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  Gap((5)),
                  const TextInput(hintText: 'Email'),
                  Gap((20)),
                  Text(
                    "Password",
                    style: Styles.headLineSmall.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  Gap((5)),
                  TextFormField(
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                    obscureText: true,
                    style: Styles.headLineSmall
                        .copyWith(fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: (20.0),
                        horizontal: (20.0),
                      ),
                      hintText: 'Password',
                    ),
                  ),
                ],
              ),
            ),
            Gap((8)),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Forgot Password?",
                  style: Styles.headLineSmall.copyWith(
                    fontSize: 12,
                    color: Styles.primaryColor,
                  ),
                ),
              ),
            ),
            Gap((25)),
            const MainButton(buttonText: "Sign In"),
            Gap((15)),
            Text(
              "Or Sign In with",
              style: Styles.headLineSmall.copyWith(
                fontSize: 14,
                color: Styles.textColor,
              ),
            ),
            Gap((50)),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the row
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all((10)),
                      backgroundColor: Colors.white,
                      foregroundColor: Styles.primaryColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Styles.disabledColor),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: (23),
                        vertical: (18),
                      ),
                      child: const Row(
                        children: [
                          FaangIcons(logo: 'Google.png'),
                        ],
                      ),
                    ),
                  ),
                  Gap((10)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all((10)),
                      backgroundColor: Colors.white,
                      foregroundColor: Styles.primaryColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Styles.disabledColor),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: (23),
                        vertical: (18),
                      ),
                      child: const Row(
                        children: [
                          FaangIcons(logo: 'apple.png'),
                        ],
                      ),
                    ),
                  ),
                  Gap((10)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all((10)),
                      backgroundColor: Colors.white,
                      foregroundColor: Styles.primaryColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Styles.disabledColor),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: (23),
                        vertical: (18),
                      ),
                      child: const Row(
                        children: [
                          FaangIcons(logo: 'Mail.png'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap((10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: Styles.headLineSmall.copyWith(
                    fontSize: 12,
                  ),
                ),
                Gap((3)),
                Text(
                  "Log In",
                  style: Styles.headLineSmall.copyWith(
                    color: Styles.primaryColor,
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
