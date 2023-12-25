
//           90   %p


import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../widgets/Bloge.dart';

class bolod_detail extends StatelessWidget {
  const bolod_detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onTap: () => Navigator.of(context).pop(),
                  child: Center(
                    child: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ),
              ),
              //Title
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text("Nature in Danger",style: TextStyle(color: Text_Appbar,fontWeight: FontWeight.bold,fontSize: 20),),
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
      padding: EdgeInsets.only(right: 15,left: 15,top: 10),
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                // photo
                Container(height:40 ,width:40 ,decoration:BoxDecoration(borderRadius: BorderRadius.circular(30)) ,
                  child: Image.asset("assets/ph1.png",fit: BoxFit.fill,),),
                // nom sociti
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: Text(" United Nations",                      textAlign: TextAlign.center,
                    style: TextStyle(color: Text_nor,fontSize: 14),),),
                ),
              ],),
              Row(children: [
              // type
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: Text("Afforestation",                      textAlign: TextAlign.center,
                  style: TextStyle(color: Text_nor,fontSize: 12),),),
              ),
              // icon type
              Container(height: 16,width:16 ,child: Image.asset("assets/dd.png"),),
            ],),


          ],),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Row(children: [
            //Title
            Text("Nature in Danger", style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Text_Title),),
            // icon title
            Container(child: Image.asset("assets/d!.png")),
          ],),
        ),
        //desq
        Container(child: Text("Our world's ecosystems rely on the delicate dance of pollinators – bees, butterflies, and other insects – to propagate plants and ensure food production. However, the decline of these essential creatures poses a significant threat to our environment and agricultural systems. In this post, we delve into the reasons behind the decline of pollinators and explore what we can do to prtect these vital species. The Ocean's Silent Struggle Plastic pollution has become an alarming crisis for our oceans, impacting marine life and ecosystems worldwide. In Plastic Pandemic, we uncover the dire consequences of plastic waste on marine environments and discuss actionable steps individuals and communities can take to curb ",

          style: TextStyle(color: Colors.grey,fontSize: 14),
        ),),
        // img
        Padding(
          padding: const EdgeInsets.only(top: 16,bottom: 16),
          child: Container(child: Image.asset("assets/blogdet.png"),),
        ),
        //desq
        Container(
          padding: EdgeInsets.only(bottom: 32),
          child: Text("Our world's ecosystems rely on the delicate dance of pollinators – bees, butterflies, and other insects – to propagate plants and ensure food production. However, the decline of these essential creatures poses a significant threat to our environment and agricultural systems. In this post, we delve into the reasons behind the decline of pollinators and explore what we can do to protect these vital species. The Ocean's Silent Struggle Plastic pollution has become an alarming crisis for our oceans, impacting marine life and ecosystems worldwide. In Plastic Pandemic, we uncover the dire consequences of plastic waste on marine environments and discuss actionable steps individuals and communities can take to curb "
            ,style: TextStyle(color: Colors.grey,fontSize: 14),
        ),),
        // rate
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          // text
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Text("How much you rate this artical",
            style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Text_Title),
            textAlign: TextAlign.center,
          ),),
          // stars
          Container(padding:EdgeInsets.only(bottom: 8),child: Image.asset("assets/Star.png"),),
        ],),

        // list Blogs

        Blog("Nature in Danger","Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit."," United Nation","assets/ph1.png","assets/Star.png","assets/d!.png"),
        Blog("Nature in Danger","Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit."," United Nation","assets/ph1.png","assets/Star.png","assets/d!.png"),
        Blog("Nature in Danger","Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.rem ipsum dolor sit amet, consectetur adipiscing elit."," United Nation","assets/ph1.png","assets/Star.png","assets/d!.png"),

      ],),
    ),

    );

  }
}
