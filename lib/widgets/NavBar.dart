import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant.dart';
import '../screens/Root/Ticket_page.dart';
import '../screens/Root/profile/profile.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: background,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/profile ph.png"),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/eventt.jpg"),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), // Adjust the opacity as needed
                  BlendMode.dstATop,
                ),
              ),
            ),
            accountName: Text(
              "Nada Tis",
            ),
            accountEmail: Text("+50 8347 6987"),
          ),
          // DArk mode
          ListTile(
              leading: SvgPicture.asset("assets/icons/bedtime.svg"),
              title: Text(
                "Dark mode",
                style: TextStyle(fontSize: 16, color: Text_Title),
              ),
              onTap: () {}),
          // My profile
          ListTile(
            leading: SvgPicture.asset("assets/icons/Frame.svg"),
            title: Text(
              "My profile",
              style: TextStyle(fontSize: 16, color: Text_Title),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return profile();
                }),
              );
            },
          ),
          // Saved
          ListTile(
              leading: SvgPicture.asset("assets/icons/Frame1.svg"),
              title: Text(
                "Saved",
                style: TextStyle(fontSize: 16, color: Text_Title),
              ),
              onTap: () {}),
          // My Tickets
          ListTile(
              leading: SvgPicture.asset("assets/icons/Frame3.svg"),
              title: Text(
                "My Tickets",
                style: TextStyle(fontSize: 16, color: Text_Title),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return My_ticket();
                  }),
                );
              }),
          // Settings
          ListTile(
              leading: SvgPicture.asset("assets/icons/Frame4.svg"),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 16, color: Text_Title),
              ),
              onTap: () {}),
          // Support Team
          ListTile(
              leading: SvgPicture.asset("assets/icons/Frame5.svg"),
              title: Text(
                "Support Team",
                style: TextStyle(fontSize: 16, color: Text_Title),
              ),
              onTap: () {}),
          // Politique de confidetialité
          ListTile(
              leading: SvgPicture.asset("assets/icons/Frame6.svg"),
              title: Text(
                "Politique de confidetialité",
                style: TextStyle(fontSize: 16, color: Text_Title),
              ),
              onTap: () {}),
          // LOGO

          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: SvgPicture.asset("assets/econnect.svg"),
          ),
        ],
      ),
    );
  }
}
