import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';
import '../../widgets/Bloge.dart';
import 'Home_page.dart';


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
            decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage("assets/eventt.jpg")
            )),
            width: MediaQuery.sizeOf(context).width,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      background,
                      Colors.transparent,
                    ]
                ),
              ),
              child: Padding(
                padding:EdgeInsets.only(left: 15,right: 15,top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //backbotton
                    Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(

                          border: Border.all(
                              color: botton ,
                              width: 1

                          ),
                          borderRadius: BorderRadius.circular(10)

                      ),
                      child: InkWell(
                        onTap: (){
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
                      child: Text("Event Details",style: TextStyle(color: Text_Appbar,fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                    // menu botton
                    Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(

                          border: Border.all(
                              color: botton ,
                              width: 1

                          ),
                          borderRadius: BorderRadius.circular(10)

                      ),
                      child: InkWell(
                        // menu
                          onTap: (){  },
                          child: Image.asset("assets/icons/menu.png",color: Botton_next,)),),
                  ],),
              ),
            ),
          )

        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10,right: 10,left: 10),
        child: ListView(

          children:
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  // img
                  Container(height: 40,width: 40,child: Image.asset("assets/even1.png"),),
                  // name date
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("EcoWarriors Org",
                          style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Text_Title),
                        ),
                        Text("22 h ",style: TextStyle(color: Botton_desactif,fontSize: 12),),
                      ],),),
                  ),
                ],),
              // persone
                Row(children: [
                  Container(
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Text("22"),
                      ),
                      Icon(Icons.people_outline,color: Botton_actif,)
                    ],),
                  ),
                  //save
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(child: Icon(Icons.bookmark_border_outlined,color: Botton_actif,)),
                  ),],)
            ],),

            Text("Green Guardians Cleanup",style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Text_Title)),
            Padding(
              padding: const EdgeInsets.only(right: 5,left: 5,top: 10),
              child: Text("Collaborate with fellow volunteers who share your passion for a healthier planet. Make a direct impact on the local ecosystem by clearing harmful debris.Learn about the significance of reducing plastic pollution and promoting sustainable habits.Connect with like-minded " ,style: TextStyle(color: Botton_desactif,fontSize: 12),),
            ),

            Padding(
              padding:  EdgeInsets.only(top: 20),
              child: SvgPicture.asset("assets/event2.svg"),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30,left: 10,right: 10,),
              child: InkWell(
                onTap: () {},
                  child: SvgPicture.asset("assets/tiket.svg")),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/maps2.png"),fit: BoxFit.fitHeight)
                  ),
                  child: SvgPicture.asset("assets/maps.svg")),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Gallery (Pre-Event)",style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Text_Title)),
                  Text("See All",style:  TextStyle(color: Text_Type)),
                ],
              ),
            ),
            
            Container(child: Image.asset("assets/event4.png")),

          ],),
      ),
    );
  }
}
