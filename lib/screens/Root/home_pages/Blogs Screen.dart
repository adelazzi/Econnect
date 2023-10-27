import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../widgets/Bloge.dart';
import '../../../widgets/list_event.dart';

class Blogs_screen extends StatelessWidget {
  const Blogs_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

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
          Expanded(flex: 12,
            child: Padding(
              padding: const EdgeInsets.only(right: 8,left: 8),
              child: ListView(
                children: [
                  Blog("Nature in Danger","Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit."," United Nation","assets/ph1.png","assets/Star.png","assets/d!.png"),
                  Blog("Together!","Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit."," Planet Mate","assets/ph2.png","assets/Star.png","assets/dd.png"),
                  Blog("Nature in Danger","Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit."," United Nation","assets/ph1.png","assets/Star.png","assets/d!.png"),
                  Blog("Nature in Danger","Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit."," United Nation","assets/ph1.png","assets/Star.png","assets/d!.png"),
                  Blog("Together!","Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit."," Planet Mate","assets/ph2.png","assets/Star.png","assets/dd.png"),
                  Blog("Nature in Danger","Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit."," United Nation","assets/ph1.png","assets/Star.png","assets/d!.png"),

                ],
              ),
            ),),

        ],
      ),
    );
  }
}
