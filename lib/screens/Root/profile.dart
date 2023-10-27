
//           90   %


import 'package:flutter/material.dart';
import 'package:econnect/screens/Root/Home_page.dart';

import '../../constant.dart';
import '../../widgets/Bloge.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(

        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              child: Padding(
                padding:EdgeInsets.only(left: 15,right: 15),
                child: Row(
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
                        Navigator.push(context,MaterialPageRoute(
                            builder: (context) {
                              return Home();
                            }), );

                      },
                      child: Center(
                        child: Icon(Icons.arrow_back_ios_new_outlined),
                      ),
                    ),
                  ),
                  //Title
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text("EcoWarriors org",style: TextStyle(color: Text_Appbar,fontWeight: FontWeight.bold,fontSize: 20),),
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
            )

            ],
        ),
      body: Container(
        child: Column(children: [
          // profile info
          Container(
            padding: EdgeInsets.only(top: 20, right: 10 ,left: 10),
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
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.asset("assets/profile ph.png"),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 8),
                            child: Container(
                              child: Text("Nada Tis",style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Text_Title)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8,top: 5,bottom: 7),
                            child: Container(child: Text("@NadaTis" ,style: TextStyle(color: Botton_desactif,fontSize: 12),),
                          ),)
                        ],
                      ),
                    ],
                  ),
                ),
                // Bio
                Container(
                  padding: EdgeInsets.only(right: 10,left: 10 ,top: 15),
                  child: Text(
                    "We are on a mission to combat environmental challenges and promote sustainable living.We are on a mission to combat environmental challenges and promote sustainable living.",
                    style: TextStyle(color: Text_nor,fontSize: 14),
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
                            Expanded(child: Text(
                              "15",
                              style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Text_Title),
                              textAlign: TextAlign.center,
                            )),
                            Expanded(child: Text(
                              "15",
                              style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Text_Title),
                              textAlign: TextAlign.center,
                            )),
                            Expanded(child: Text(
                              "15",
                              style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Text_Title),
                              textAlign: TextAlign.center,
                            )),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(child: Text(
                            "Events",
                            style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Text_Title),
                            textAlign: TextAlign.center,
                          )),
                          Expanded(child: Text(
                            "Blogs",
                            style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Text_Title),
                            textAlign: TextAlign.center,
                          )),
                          Expanded(child: Text(
                            "Followers",
                            style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Text_Title),
                            textAlign: TextAlign.center,
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                // edit profile
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    decoration: BoxDecoration(
                        color: Botton_actif,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    width: MediaQuery.sizeOf(context).width ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "Edit Profile",

                    style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),
                    textAlign: TextAlign.center,
                        ),
                        Icon(Icons.mode_edit_outlined,color: Colors.white,),


                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(child: TabBar(
            unselectedLabelColor: Botton_desactif,
            labelColor: Botton_desactif,
            indicatorPadding: EdgeInsets.only(bottom: 7),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3,
            indicatorColor: Botton_next,

            tabs: [
              Tab(text:"Blogs",),
              Tab(text:"Previous Event" ,),
            ],),),
          Container(
            height: 348,
            width: double.maxFinite,
            child: TabBarView(
            children: [
              Container(
                child:ListView(
                  children:  [
                    Blog("Nature in Danger","Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit."," United Nation","assets/ph1.png","assets/Star.png","assets/d!.png"),
                    Blog("Together!","Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit."," Planet Mate","assets/ph2.png","assets/Star.png","assets/dd.png"),
                    Blog("Nature in Danger","Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit."," United Nation","assets/ph1.png","assets/Star.png","assets/d!.png"),

                  ],
                ),),
              Container(child: Center(child: Text("Empty !!",style: TextStyle(color: Text_nor,fontSize: 20),),),),
            ],),),

        ],),
      ),
      ),
    );
  }
}
