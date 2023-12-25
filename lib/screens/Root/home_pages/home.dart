import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../widgets/event_card.dart';
import '../../../widgets/list_event.dart';
import '../../../widgets/news.dart';

class homme extends StatelessWidget {
  const homme({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView(
              clipBehavior: Clip.hardEdge,
              controller: PageController(viewportFraction: 0.9),
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            children: [
              neww(),
              neww(),
              neww(),

            ],
          ),),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(margin: EdgeInsets.only(left: 20),
                child: ListView(

                  scrollDirection: Axis.horizontal,
                children: [
                  listevent("All","assets/all.png",Botton_actif),
                  listevent("Afforestation","assets/dd.png",Colors.black12),
                  listevent("Recyling","assets/ddd.png",Colors.black12),
                ],
              ),),
            ),
          ),
          Expanded(flex: 8,
            child: ListView(
            children: [
              EventCard(
                eventTitle: 'Planet Cleanup',
                eventDescription: 'Help us revive the garden of vector hugo...',
                eventParticipants: 14,
                eventDate: DateTime(2023,05,02),
                eventLocation: 'Paris',),
              EventCard(
                eventTitle: 'Planet Cleanup',
                eventDescription: 'Help us revive the garden of vector hugo...',
                eventParticipants: 14,
                eventDate: DateTime(2023,05,02),
                eventLocation: 'Paris',),
              EventCard(
                eventTitle: 'Planet Cleanup',
                eventDescription: 'Help us revive the garden of vector hugo...',
                eventParticipants: 14,
                eventDate: DateTime(2023,05,02),
                eventLocation: 'Paris',),
              EventCard(
                eventTitle: 'Planet Cleanup',
                eventDescription: 'Help us revive the garden of vector hugo...',
                eventParticipants: 14,
                eventDate: DateTime(2023,05,02),
                eventLocation: 'Paris',),

            ],
          ),),

        ],
      ),
    );
  }
}
