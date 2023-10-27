import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:econnect/screens/Root/notification.dart';

import '../../constant.dart';
import '../../widgets/search_bar.dart';
import '../../widgets/topage.dart';
import 'home_pages/Blogs Screen.dart';
import 'home_pages/Media.dart';
import 'home_pages/game.dart';
import 'home_pages/home.dart';
import 'notready.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {



    final _kTabPages = <Widget>[
      homme(),
      media(),
      Notready(),
      Blogs_screen(),
      game_screen(),
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(Icons.home_filled), label: 'Home'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.people_outline), label: 'Media'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined), label: 'Calendar'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.book_outlined), label: 'Blogs'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.games_outlined), label: 'Game'),
    ];

    assert(_kTabPages.length == _kBottmonNavBarItems.length);

    final bottomNavBar = BottomNavigationBar(
      showUnselectedLabels: false,
      selectedItemColor: Botton_actif,
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(

    appBar: AppBar(
        actions: [
          // User icon
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: GestureDetector(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) {return profile();}),);
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/image.png"),
                radius: 19,
              ),
            ),
          ),
          Gap(8),

          // Search Bar
          Expanded(
            child: AppBarSearch(
              filterSearchResults: (value) {},
            ),
          ),
          Gap(8),

          // Notification Icon
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return notification();
                  }),
                );
              },
              child: const Icon(
                FluentIcons.alert_28_regular,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
