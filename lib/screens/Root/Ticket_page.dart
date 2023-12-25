import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../widgets/event_card.dart';

class My_ticket extends StatelessWidget {
  const My_ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
                        "My Tickets",
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
        body: ListView(
          children: [
            EventtecketCard(
              eventTitle: 'Planet Cleanup',
              eventDescription: 'Help us revive the garden of vector hugo...',
              eventParticipants: 14,
              eventDate: DateTime(2023, 05, 02),
              eventLocation: 'Paris',
            ),
            EventtecketCard(
              eventTitle: 'Planet Cleanup',
              eventDescription: 'Help us revive the garden of vector hugo...',
              eventParticipants: 14,
              eventDate: DateTime(2023, 05, 02),
              eventLocation: 'Paris',
            ),
            EventtecketCard(
              eventTitle: 'Planet Cleanup',
              eventDescription: 'Help us revive the garden of vector hugo...',
              eventParticipants: 14,
              eventDate: DateTime(2023, 05, 02),
              eventLocation: 'Paris',
            ),
            EventtecketCard(
              eventTitle: 'Planet Cleanup',
              eventDescription: 'Help us revive the garden of vector hugo...',
              eventParticipants: 14,
              eventDate: DateTime(2023, 05, 02),
              eventLocation: 'Paris',
            ),
            EventtecketCard(
              eventTitle: 'Planet Cleanup',
              eventDescription: 'Help us revive the garden of vector hugo...',
              eventParticipants: 14,
              eventDate: DateTime(2023, 05, 02),
              eventLocation: 'Paris',
            ),
          ],
        ),
      ),
    );
  }
}
