import 'package:flutter/material.dart';
import 'package:ilead_df65e/screens/tv/nbs.dart';

import 'notifications.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    AppBar(
      title: const Text("iLead TV"),
      backgroundColor: Colors.purpleAccent,
      leading:const Image(image: AssetImage('assets/images/logo1.jpg')),
        // size: , set the size of the icon
        //color: Colors.red,  set the color of the icon
      actions: [
        IconButton(onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Notifications()),
          ),
        },icon: const Icon(Icons.notification_important_rounded)),
        IconButton(onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Notifications()),
          ),
        }, icon: const Icon(Icons.menu)),
      ],
      flexibleSpace: const FlexibleSpaceBar(
        stretchModes: <StretchMode>[
          StretchMode.zoomBackground,
          StretchMode.blurBackground,
          StretchMode.fadeTitle,
        ],
        centerTitle: true,
      ),
    );

      return ListView(
      children:[
        Column(
          children:[
            const SizedBox(
              height: 3.3,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(1.3),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.purpleAccent, width: 1.3,),
                shape: BoxShape.rectangle,
              ),
              child: Column(children: [
                const Text(" \n iLEAD AFRICA is a non-profit organization focused on empowering marginalized communities. \n"),
                const SizedBox(
                  width: 1.3,
                  height: 1.3,
                ),
                Align(
                  child:
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: <Widget>[
                        const Image(image: AssetImage('assets/images/IMG_3021.jpg')),
                          IconButton(
                            onPressed: () {
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const NBS()),
                            );
                            }, icon: const Icon(Icons.play_arrow,),
                            tooltip: 'Introduction',
                            iconSize: 72,
                            color: Colors.white70,
                          ),
                ],),
                ),
              ],),),],),
          const Card(
            child: Text('iLead')
          ),
          Row(
            children:[
              Container(
                alignment: Alignment.center,
                width: 190.0,
                margin: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color:  Colors.blue.shade900,
                  border: Border.all(color: Colors.purpleAccent, width: 1.6,),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: const Column(
                  children: [
                    Text('\n FINANCE'),
                    Padding(
                      padding: EdgeInsets.all(13.0),
                      child:
                      Icon(
                        Icons.monetization_on_outlined,
                        size: 90.0,
                        color: Colors.white70,),
                        ),
                    ],),
                ),
                Container(
                alignment: Alignment.center,
                width: 190.0,
                margin: const EdgeInsets.all(1.3),
                decoration: BoxDecoration(
                  color:  Colors.blue.shade900,
                  border: Border.all(color: Colors.purpleAccent, width: 1.6,),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: const Column(children: [
                  Text('\n TOURISM'),
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Icon(
                      Icons.pets,
                      size: 90.0,
                      color: Colors.white70,),
                  ),
                ],),
              ),
              Container(
                alignment: Alignment.center,
                width: 190.0,
                margin: const EdgeInsets.all(1.3),
                decoration: BoxDecoration(
                  color:  Colors.blue.shade900,
                  border: Border.all(color:  const Color.fromRGBO(33, 37, 41, 1), width: 1.6,),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: const Column(
                  children: [
                  Text('\n INNOVATION'),
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Icon(
                        Icons.info_outline_rounded ,
                        size: 90.0,
                        color: Colors.white70),
                  ),
                ],),
              ),
              Container(
                alignment: Alignment.center,
                width: 190.0,
                margin: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color:  Colors.blue.shade900,
                  border: Border.all(color: Colors.purpleAccent, width: 1.6,),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(28),
              ),
                child: const Column(children: [
                  Text('\n FINTECH'),
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Icon(
                      Icons.monetization_on_rounded ,
                      size: 90.0,
                      color: Colors.white70,),
                  ),
                ],),
              ),
              Container(
                alignment: Alignment.center,
                width: 190.0,
                margin: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color:  Colors.blue.shade900,
                  border: Border.all(color: Colors.purpleAccent, width: 1.6,),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: const Column(
                  children: [
                  Text('\n SPORTS'),
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Icon(
                      Icons.sports_basketball_rounded,
                      size: 90.0,
                      color: Colors.white70,),
                      ),
                  ],),
                ),
              ],
        ),
        const Card(
          child: Text('Live TV'),
        ),
        Row(
          children:[
            Container(
              alignment: Alignment.center,
              width: 190.0,
              margin: const EdgeInsets.all(1.3),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: const Color.fromARGB(255, 243, 240, 243), width: 0.9,),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(28),
              ),
              child: const Column(children: [
                Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Image( image:AssetImage('assets/images/nbs-logo1.png')),
                ),
              ],),
            ),
            Container(
              alignment: Alignment.center,
              width: 190.0,
              margin: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: const Color.fromARGB(255, 243, 240, 243), width: 0.9,),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(28),
              ),
              child: const Column(
                children: [
                Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Image( image:AssetImage('assets/images/ubc.jfif'),
                  ),
                ),
                ],      ),
              ),

            Container(
              alignment: Alignment.center,
              width: 190.0,
              margin: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color:  Colors.transparent,
                border: Border.all(color: const Color.fromARGB(255, 243, 240, 243), width: 0.9,),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(28),
            ),
              child: const Column(children: [
                Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Image( image:AssetImage('assets/images/ntv.jfif')),
                ),
              ],),
            ),
            Container(
              alignment: Alignment.center,
              width: 190.0,
              margin: const EdgeInsets.all(1.3),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: const Color.fromARGB(255, 243, 240, 243), width: 0.9,),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(28),
              ),
              child: const Column(children: [
                Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Image( image:AssetImage('assets/images/nbs-sport.png')),
                ),
              ],),
            ),
              Container(
                alignment: Alignment.center,
                width: 190.0,
                margin: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: const Color.fromARGB(255, 243, 240, 243), width: 0.9,),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(13.0),
                  child: Image( image:AssetImage('assets/images/spark.png')),
                ),
              ],),
            ),
          ],
        ),
    ], );
}}