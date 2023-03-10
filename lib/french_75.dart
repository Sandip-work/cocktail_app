
import 'package:flutter/material.dart';
// import 'package:morphable_shape/morphable_shape.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';
import 'dart:developer';
// import 'package:styled_widget/styled_widget.dart' as style;

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
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: 150,
            height: 150,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[
                    const Color(0xff77C2DC).withOpacity(0.5),
                    const Color(0xff6859EA),
                  ],
              ),
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
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(40)),
                gradient: LinearGradient(
                    begin: const Alignment(1.0, -1.0),
                    end:const  Alignment(-1.0, -1.0),
                    colors: <Color>[
                      const Color(0xff6859EA).withOpacity(0.7),
                const Color(0xff77C2DC),
    ],
                ),
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
                        " form was created in 1915 at the New York Bar in Paris???later "
                        "Harry's New York Bar???by barman Harry MacElhone."),
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
                          child: Text("1?? ounces gin, such as Hendrick's"),
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
                          child: Text("?? ounce fresh lemon juice"),
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
                          child: Text("?? ounce simple syrup"),
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
                    child: Text("1. A dd the gin, lemon juice and simple syrup "
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
                          shadowColor: Colors.transparent,
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
                          shadowColor: Colors.transparent,
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
            top: 230,
            left: 120,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(15 / 360),
              child: ShapeOfView(
                shape: RoundRectShape(
                   // numberOfSides: 4,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(60.0),
                      bottomRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(60.0),
                    ),
                    borderColor: Colors.white, //optional
                    borderWidth: 10.0,

                ),

                height: MediaQuery.of(context).size.height*0.2,
                width:MediaQuery.of(context).size.width*0.4,
                child: Image.asset(
                    "assets/images/french75.jpg",
                  fit: BoxFit.fill,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
