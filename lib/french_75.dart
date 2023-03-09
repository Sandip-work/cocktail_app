import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'dart:developer';

class Cocktail extends StatelessWidget {
  const Cocktail({super.key});

  @override
  Widget build(BuildContext context) {
    return const French75(
      title: '',
    );
  }
}

class French75 extends StatefulWidget {
  const French75({super.key, required this.title});

  final String title;

  @override
  State<French75> createState() => _French75State();
}

class _French75State extends State<French75> {

  final kInnerDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.white, width: 10),
    borderRadius: BorderRadius.circular(32),
  );

  final kGradientBoxDecoration = BoxDecoration(
      color: Colors.red,
      //gradient: const LinearGradient(colors: [Colors.black, Colors.redAccent]),
      //border: Border.all(width: 10,
      //color: Colors.black),
      borderRadius: BorderRadius.circular(30));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[Color(  0xff77C2DC), Color(0xff6859EA)]),
            ),
            child: const Padding(
              padding:
                  EdgeInsets.only(left: 40, bottom: 10, right: 20, top: 100),
              child: Text(
                "Cocktails",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 250,
            child: Container(
              width: 150,
              height: 280,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: <Color>[Color(0xff6859EA), Color(0xff77C2DC)]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300, top: 120),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 350),
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(top: 8),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60.0),
                topRight: Radius.circular(60.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Yield: 8 servings",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.deepPurpleAccent,
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "French 75",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                        "French 75 is a cocktail made from gin, champagne, lemon juice, and sugar. "
                        "It is also called a 75 Cocktail, or in French simply aSoixante Quinze. "
                        "The drink dates to World War I, and an early"
                        " form was created in 1915 at the New York Bar in Paris—later "
                        "Harry's New York Bar—by barman Harry MacElhone."),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "What you need",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: const [
                        Icon(Icons.circle_outlined),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text("1½ ounces gin, such as Hendrick's"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: const [
                        Icon(Icons.circle_outlined),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text("¾ ounce fresh lemon juice"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.circle_outlined),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text("¾ ounce simple syrup"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: const [
                        Icon(Icons.circle_outlined),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text("2 ounces Champagne"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.circle_outlined),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text("Long spiral lemon twist (for serving)"),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Let's prepare",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 8, right: 16),
                    child: Text("1. Add the gin, lemon juice and simple syrup "
                        "to a shaker with ice and shake until well-chilled."),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 8),
                    child: Text("2. Strain into a Champagne flute."),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 8),
                    child: Text("3. Top with the Champagne."),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 8),
                    child: Text("4. Garnish with a lemon twist."),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: Ink(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: <Color>[
                                Color(0xffD4365C),
                                Color(0xffF79062),
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20)),
                          ),
                          child: Container(
                            height: 40,
                            width: 150,
                            //constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                            alignment: Alignment.center,
                            child: const Text(
                              'Did you made this?',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: Ink(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: <Color>[
                                Color(0xffF79062),
                                Color(0xffD4365C),
                              ],
                            ),
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(20)),
                          ),
                          child: Container(
                            height: 40,
                            width: 150,
                            alignment: Alignment.center,
                            child: const Text(
                              'Remove from Cart',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
         Positioned(
           top: 220,
           left: 120,
           child: Transform.rotate(
             // quarterTurns: 6,
             angle: -240,
             // angle: 35,
             child: Container(
               height: 175,
               width: 165,
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.white, width: 5.0),
                 borderRadius: const BorderRadius.only(
                   topLeft: Radius.circular(60.0),
                   topRight: Radius.circular(35.0),
                   bottomRight: Radius.circular(60.0),
                   bottomLeft: Radius.circular(35.0),
                 ),
                 // color: Colors.red,
               ),
               child: ClipRRect(
                   borderRadius: const BorderRadius.only(
                     topLeft: Radius.circular(60.0),
                     topRight: Radius.circular(35.0),
                     bottomRight: Radius.circular(60.0),
                     bottomLeft: Radius.circular(35.0),
                   ),
                 child: SizedBox(
                   height: 175,
                   width: 165,
                   child: RotatedBox(
                     // angle: 240,
                     quarterTurns: 1,
                     child: Image.asset(
                         'assets/images/french75.jpg',
                       fit: BoxFit.fill,
                       // scale: 15.0,
                     ),
                   ),
                 ),
               ),
             ),
           ),
         ),

         /*Positioned(
           top: 220,
           left: 120,
             child: Container(
               height: 185,
               width: 120,
               color: Colors.black,
               child: Transform(
                 alignment: Alignment.center,
                 transform: Matrix4.rotationZ(
                   3.1415926535897932 / 4,
                 ),
                 child: Image.asset('assets/images/french75.jpg',
                   fit: BoxFit.fill,
                   height: 185,
                   width: 120,
           ),
               ),
             )
         ),*/

         /* Positioned(
              top: 220,
              left: 120,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(
                  -3.1415926535897932 / 4,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.width / 2.3,
                  width: MediaQuery.of(context).size.width / 2.3,
                  decoration:
                  const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(60.0),
                      bottomRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(60.0),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(60.0),
                      bottomRight: Radius.circular(35.0),
                      bottomLeft: Radius.circular(60.0),
                    ),
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(
                        3.1415926535897932 / 4,
                      ),
                      child:  Positioned.fill(
                        child: Image.asset(
                          'assets/images/french75.jpg',
                          fit: BoxFit.fill,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ),*/
        ],
      ),
    );
  }
}
