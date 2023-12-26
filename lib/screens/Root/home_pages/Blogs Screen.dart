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
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listevent("All", "assets/all.png", Botton_actif),
                    listevent(
                        "Afforestation","assets/dd.png", Colors.black12),
                    listevent("Recyling", "assets/ddd.png", Colors.black12),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: ListView(
                children: [
                  Blog(
                      title: "Nature in Danger",
                      desq:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit.",
                      namecomp: " United Nation",
                      phcomp: "assets/ph1.png",
                      star: "assets/Star.png",
                      mark: "assets/d!.png"),
                  Blog(
                      title: "Together!",
                      desq:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit.",
                      namecomp: " Planet Mate",
                      phcomp: "assets/ph2.png",
                      star: "assets/Star.png",
                      mark: "assets/dd.png"),
                  Blog(
                      title: "Nature in Danger",
                      desq:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit.",
                      namecomp: " United Nation",
                      phcomp: "assets/ph1.png",
                      star: "assets/Star.png",
                      mark: "assets/d!.png"),
                  Blog(
                      title: "Nature in Danger",
                      desq:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit.",
                      namecomp: " United Nation",
                      phcomp: "assets/ph1.png",
                      star: "assets/Star.png",
                      mark: "assets/d!.png"),
                  Blog(
                      title: "Together!",
                      desq:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit.",
                      namecomp: " Planet Mate",
                      phcomp: "assets/ph2.png",
                      star: "assets/Star.png",
                      mark: "assets/dd.png"),
                  Blog(
                      title: "Nature in Danger",
                      desq:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit.",
                      namecomp: " United Nation",
                      phcomp: "assets/ph1.png",
                      star: "assets/Star.png",
                      mark: "assets/d!.png"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
