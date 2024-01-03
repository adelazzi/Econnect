import 'package:flutter/material.dart';
import 'package:econnect/screens/Root/Home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constant.dart';
import '../../../widgets/Donate_botton.dart';
import '../../../widgets/event_card.dart';

class Compinies_profile extends StatelessWidget {
  const Compinies_profile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Home();
                            }),
                          );
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
                        "EcoWarriors org",
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
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              // profile info
              Container(
                padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                //height: size.height / 2.5 ,
                width: size.width,
                //color: Colors.black12,
                child: Column(
                  children: [
                    // phto and name
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  "assets/even1.png",
                                  fit: BoxFit.fill,
                                )),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 8),
                                child: Container(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text("Organization",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Text_Title)),
                                      Container(
                                        margin: EdgeInsets.only(left: 4),
                                        child: Icon(
                                          Icons.verified,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, top: 5, bottom: 7),
                                child: Container(
                                  child: Text(
                                    "@organization",
                                    style: TextStyle(
                                      color: Botton_desactif,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Bio
                    Container(
                      padding: EdgeInsets.only(right: 10, left: 10, top: 15),
                      child: Text(
                        "We are on a mission to combat environmental challenges and promote sustainable living.We are on a mission to combat environmental challenges and promote sustainable living.",
                        style: TextStyle(color: Text_nor, fontSize: 14),
                      ),
                    ),
                    // event blog ....
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Text(
                                  "15",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Text_Title),
                                  textAlign: TextAlign.center,
                                )),
                                Expanded(
                                    child: Text(
                                  "15",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Text_Title),
                                  textAlign: TextAlign.center,
                                )),
                                Expanded(
                                    child: Text(
                                  "15",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Text_Title),
                                  textAlign: TextAlign.center,
                                )),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Events",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Text_Title),
                                textAlign: TextAlign.center,
                              )),
                              Expanded(
                                  child: Text(
                                "Blogs",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Text_Title),
                                textAlign: TextAlign.center,
                              )),
                              Expanded(
                                  child: Text(
                                "Followers",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Text_Title),
                                textAlign: TextAlign.center,
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // edit profile
                    Row(
                      children: [
                        // donate
                        Expanded(
                          child: Donate_botton(),
                        ),
                        // Follow
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 4, right: 4, top: 16),
                            decoration: BoxDecoration(
                                color: Botton_actif,
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Text(
                                    "Follow",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SvgPicture.asset("assets/icons/follow.svg"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                child: TabBar(
                  unselectedLabelColor: Botton_desactif,
                  labelColor: Botton_desactif,
                  indicatorPadding: EdgeInsets.only(bottom: 7),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 3,
                  indicatorColor: Botton_next,
                  tabs: [
                    Tab(
                      text: "Events",
                    ),
                    Tab(
                      text: "Blogs",
                    ),
                    Tab(
                      text: "Post",
                    ),
                  ],
                ),
              ),
              Container(
                height: 314,
                width: double.maxFinite,
                child: TabBarView(
                  children: [
                    Container(
                      child: ListView(
                        children: [
                          EventCard(
                            eventTitle: 'Planet Cleanup',
                            eventDescription:
                                'Help us revive the garden of vector hugo...',
                            eventParticipants: 14,
                            eventDate: DateTime(2023, 05, 02),
                            eventLocation: 'Paris',
                          ),
                          EventCard(
                            eventTitle: 'Planet Cleanup',
                            eventDescription:
                                'Help us revive the garden of vector hugo...',
                            eventParticipants: 14,
                            eventDate: DateTime(2023, 05, 02),
                            eventLocation: 'Paris',
                          ),
                          EventCard(
                            eventTitle: 'Planet Cleanup',
                            eventDescription:
                                'Help us revive the garden of vector hugo...',
                            eventParticipants: 14,
                            eventDate: DateTime(2023, 05, 02),
                            eventLocation: 'Paris',
                          ),
                          EventCard(
                            eventTitle: 'Planet Cleanup',
                            eventDescription:
                                'Help us revive the garden of vector hugo...',
                            eventParticipants: 14,
                            eventDate: DateTime(2023, 05, 02),
                            eventLocation: 'Paris',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Empty !!",
                          style: TextStyle(color: Text_nor, fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Empty !!",
                          style: TextStyle(color: Text_nor, fontSize: 20),
                        ),
                      ),
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
