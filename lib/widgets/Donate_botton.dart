import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';
import '../screens/Root/event_details.dart';

class Donate_botton extends StatelessWidget {
  const Donate_botton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Donate_page();
          }),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 4, right: 4, top: 16),
        decoration: BoxDecoration(
            border: Border.all(color: Botton_actif, width: 2),
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.only(top: 8, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Text(
                "Donate",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Botton_actif),
                textAlign: TextAlign.center,
              ),
            ),
            SvgPicture.asset("assets/money.svg"),
          ],
        ),
      ),
    );
  }
}
