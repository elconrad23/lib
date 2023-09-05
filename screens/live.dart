import 'package:flutter/material.dart';
import 'package:ilead_df65e/screens/tv/nbs.dart';
import 'package:ilead_df65e/screens/tv/ubc.dart';
// import 'package:ilead/screens/tv/nbs.dart';

class Live extends StatefulWidget {
  const Live({super.key});

  @override
  State<Live> createState() => _LiveState();
}

class _LiveState extends State<Live> {

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Live TV"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(padding: const EdgeInsets.only(top: 20.0)),
            Row(
            children:[
              Container(
                alignment: Alignment.center,
                width: 123.0,
                margin: const EdgeInsets.all(1.3),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 150, 136, 1),
                  border: Border.all(color: Colors.blue, width: 3.0,),
                  shape: BoxShape.rectangle,
                ),
                child:  Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: IconButton(
                      iconSize: 90.0,
                      icon: const Icon(Icons.tv_sharp ),
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const UBC()),
                  );},),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NBS()),
                      );
                    },
                    child: const Text(" Tune in: CH01 "),
                    ),
                    ),],),
                    ),
              Container(
                alignment: Alignment.center,
                width: 123.0,
                margin: const EdgeInsets.all(1.3),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 150, 136, 1),
                  border: Border.all(color: Colors.blue, width: 3.0,),
                  shape: BoxShape.rectangle,
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: IconButton(
                      iconSize: 90.0,
                      icon: const Icon(Icons.tv_sharp ),
                      onPressed: ()  {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const UBC(),),
                  );},),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const UBC()),
                        );
                      },
                      child: const Text(" Tune in: CH02"),
                    ),
                  ),
                ],),
              ),
              Container(
                alignment: Alignment.center,
                width: 123.0,
                margin: const EdgeInsets.all(1.3),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 150, 136, 1),
                  border: Border.all(color: Colors.blue, width: 3.0,),
                  shape: BoxShape.rectangle,
                ),
                child:  Column(children: [
                  const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(
                        Icons.tv_sharp,
                        size: 90.0,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const NBS()),
                        );
                      },
                      child: const Text(" Tune in: CH03 "),
                    ),
                  ),
                ],),),],),],),),
);
                }

}