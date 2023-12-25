import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:econnect/utils/FAANG_icon.dart';
import 'package:econnect/utils/app_style.dart';

class MainSignIn extends StatelessWidget {
  const MainSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: (20), right: (20), top: (10), bottom: (40)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: (50), bottom: (20)),
              child: Container(
                height: (350),
                width: (350),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/s1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Gap((10)),
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
            Gap((20)),
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
                padding: EdgeInsets.all((10)),
                child: Row(
                  children: [
                    const FaangIcons(logo: 'Google.png'),
                    Gap((50)),
                    Text(
                      'Sign In with google',
                      style: Styles.headLineMedium.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Styles.titleColor),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Gap((15)),
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
                padding: EdgeInsets.all((10)),
                child: Row(
                  children: [
                    const FaangIcons(logo: 'apple.png'),
                    Gap((50)),
                    Text(
                      'Sign In with Apple',
                      style: Styles.headLineMedium.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Styles.titleColor),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Gap((15)),
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
                padding: EdgeInsets.all((10)),
                child: Row(
                  children: [
                    const FaangIcons(logo: 'Mail.png'),
                    Gap((50)),
                    Text(
                      'Sign In with Email',
                      style: Styles.headLineMedium.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Styles.titleColor),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
