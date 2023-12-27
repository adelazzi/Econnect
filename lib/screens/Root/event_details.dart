import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';

class event extends StatelessWidget {
  const event({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 203,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Container(
            height: 203,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/eventt.jpg"),
              ),
            ),
            width: MediaQuery.sizeOf(context).width,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      background,
                      Colors.white10,
                    ]),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //backbotton
                    Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(
                          border: Border.all(color: botton, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                      ),
                    ),
                    //Title
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "Event Details",
                        style: TextStyle(
                            color: Text_Appbar,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    // menu botton
                    Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(
                          border: Border.all(color: botton, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: InkWell(
                          // menu
                          onTap: () {},
                          child: Image.asset(
                            "assets/icons/menu.png",
                            color: Botton_next,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10, right: 10, left: 10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // img
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/even1.png"),
                    ),
                    // name date
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "EcoWarriors Org",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Text_Title),
                            ),
                            Text(
                              "22 h ",
                              style: TextStyle(
                                  color: Botton_desactif, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // persone
                Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3),
                            child: Text("22"),
                          ),
                          Icon(
                            Icons.people_outline,
                            color: Botton_actif,
                          )
                        ],
                      ),
                    ),
                    //save
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Icon(
                        Icons.bookmark_border_outlined,
                        color: Botton_actif,
                      )),
                    ),
                  ],
                )
              ],
            ),
            Text("Green Guardians Cleanup",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Text_Title)),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5, top: 10),
              child: Text(
                "Collaborate with fellow volunteers who share your passion for a healthier planet. Make a direct impact on the local ecosystem by clearing harmful debris.Learn about the significance of reducing plastic pollution and promoting sustainable habits.Connect with like-minded ",
                style: TextStyle(color: Botton_desactif, fontSize: 12),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: SvgPicture.asset("assets/event2.svg"),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 10,
                right: 10,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return my_tecket();
                    }),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(right: 12, left: 12),
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Botton_next, blurRadius: 5)],
                      color: Botton_actif,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "My Ticket",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SvgPicture.asset("assets/icons/ticket.svg"),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/maps2.png"),
                          fit: BoxFit.fitHeight)),
                  child: SvgPicture.asset("assets/maps.svg")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Gallery (Pre-Event)",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Text_Title)),
                  Text("See All", style: TextStyle(color: Text_Type)),
                ],
              ),
            ),
            Container(child: Image.asset("assets/event4.png")),
          ],
        ),
      ),
    );
  }
}

class my_tecket extends StatelessWidget {
  const my_tecket({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //backbotton
                    Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(
                          border: Border.all(color: botton, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            tileMode: TileMode.repeated,
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 161, 218, 209),
              Color.fromARGB(255, 208, 231, 228),
            ],
          )),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                "assets/ticket_frame.svg",
                fit: BoxFit.cover,
              ),
              Container(
                height: 470,
                child: Column(
                  children: [
                    // profile image
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      height: 100.3,
                      width: 100.3,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Botton_actif, blurRadius: 5)
                        ],
                        image: DecorationImage(
                            // profile image
                            fit: BoxFit.cover,
                            image: AssetImage("assets/profile ph.png")),
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    // profile name
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Nada Tis",
                        style: TextStyle(
                            color: Text_Type,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                    //event name
                    Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: Text("Green Guardians Cleanup",
                          style: TextStyle(
                              color: Text_Appbar,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ),
                    // N ticket
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Text("00045",
                          style: TextStyle(
                              color: Text_Appbar,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ),
                    // QR code
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: SvgPicture.asset("assets/QR Code.svg"),
                    ),
                    // app name
                    Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: Text("ECOnecet 2023",
                          style: TextStyle(
                              color: Text_Appbar,
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
