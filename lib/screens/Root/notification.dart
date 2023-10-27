// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:econnect/widgets/nots.dart';
import '../../constant.dart';
import '../../widgets/underline.dart';
import 'Home_page.dart';



class notification extends StatelessWidget {
  const notification({super.key});

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
                      child: Text("Notifications",style: TextStyle(color: Text_Appbar,fontWeight: FontWeight.bold,fontSize: 20),),
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
        body: Container(child: Column(children: [
          Container(
            child: TabBar(
            unselectedLabelColor: Botton_desactif,
            labelColor: Botton_desactif,
            indicatorPadding: EdgeInsets.only(bottom: 7),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3,
            indicatorColor: Botton_next,
            tabs: [
              Tab(text:"Events",),
              Tab(text:"General" ,),
            ],),),
          Underline_g(),
          Container(
            height: 630,
            width: double.maxFinite,
            child: TabBarView(
              children: [
                Container(
                  child:ListView(
                    children:  [
                      nots(),
                      nots(),
                      nots(),
                      nots(),
                      nots(),
                      nots(),

                    ],
                  ),),

                Container(
                  child:ListView(
                    children:  [
                      nots(),
                      nots(),
                      nots(),
                      nots(),
                    ],
                  ),),
              ],),),
        ],),),
      ),
    );
  }
}
