import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../widgets/list_event.dart';
import '../../../widgets/post_widget.dart';

class media extends StatelessWidget {
  const media({super.key});

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
            child: ListView(
              children: [
                PostWidget(
                  blogAuthor: 'Planet Mate',
                  publishDate: DateTime(1),
                  blogDescreption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ultricies orci ac mauris cursus, sed egestas nisl laoreet. Sed tempor urna mattis   ...',
                  numberOfLikes: 200,
                  numberOfComments: 120,
                  photo: 'assets/ph2.png',),
                PostWidget(
                  blogAuthor: 'EarthCare',
                  publishDate: DateTime(1),
                  blogDescreption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ultricies orci ac mauris cursus, sed egestas nisl laoreet. Sed tempor urna mattis   ...',
                  numberOfLikes: 200,
                  numberOfComments: 120,
                  photo: 'assets/earthcare.png',),
              ],
            ),),

        ],
      ),
    );
  }
}
