import 'package:flutter/material.dart';

class Cocktail extends StatelessWidget {
  const Cocktail({super.key});

  @override
  Widget build(BuildContext context) {
    return const French75(title: '',);
  }
}

class French75 extends StatefulWidget {
  const French75({super.key, required this.title});

  final String title;

  @override
  State<French75> createState() => _French75State();
}

class _French75State extends State<French75> {

  final  kInnerDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.white),
    borderRadius: BorderRadius.circular(32),
  );

  final kGradientBoxDecoration = BoxDecoration(
    gradient: const LinearGradient(colors: [Colors.black, Colors.redAccent]),
    borderRadius: BorderRadius.circular(32),
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
         Stack(
           children: [
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: <Color>[Color(0xff639cd9),Color(0xff5454c5)]),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 40,bottom: 20,right: 20,top: 100),
                      child: Text("Cocktails",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                    ),
                  ),
        Stack(
            children: <Widget>[
             Padding(
              padding: const EdgeInsets.only(top: 150.0,left: 130),
              child: Container(
                alignment: Alignment.bottomRight,
                width: 100,
                height: 150,  
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: <Color>[Color(0xff639cd9),Color(0xff5454c5)]
                  ),
                ),
              ),
            ),
               Padding(
                padding: const EdgeInsets.only(top: 200,left: 180),
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                         },
                 icon: const Icon(Icons.arrow_back_ios,
                 color: Colors.white,), ),
              ),
          ],
        ),
                ],
              ),
              Expanded(
                 child:  SingleChildScrollView(
                     child:  ClipRRect(
                       borderRadius: BorderRadius.circular(20),
                       child: Column(
                         children:  [
                           Row(
                             children: const [
                                Padding(
                                 padding:  EdgeInsets.all(16.0),
                                 child: Align(
                                   alignment: Alignment.topLeft,
                                   child:  Text("Yield: 8 servings",
                                   style: TextStyle(
                                     color: Colors.orange
                                   ),
                                   ),
                                 ),
                               ),
                               SizedBox(width: 200,),
                               Icon(Icons.favorite,
                               color: Colors.deepPurpleAccent,)
                             ],
                           ),
                           const Padding(
                             padding: EdgeInsets.all(16.0),
                             child: Align(
                               alignment: Alignment.topLeft,
                               child: Text("French 75",
                               style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold
                               ),
                               ),
                             ),
                           ),
                           const Padding(
                             padding: EdgeInsets.all(16.0),
                             child: Text("French 75 is a cocktail made from gin, champagne, lemon juice, and sugar. "
                                 "It is also called a 75 Cocktail, or in French simply aSoixante Quinze. "
                                 "The drink dates to World War I, and an early"
                                 " form was created in 1915 at the New York Bar in Paris—later "
                                 "Harry's New York Bar—by barman Harry MacElhone."),
                           ),
                           const Padding(
                             padding: EdgeInsets.all(16.0),
                             child: Align(
                               alignment: Alignment.topLeft,
                               child: Text("What you need",
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20
                                ),
                               ),
                             ),
                           ),
                           const Padding(
                             padding:  EdgeInsets.all(16.0),
                             child: Align(
                               alignment: Alignment.topLeft,
                               child:  Text(
                                 "1½ ounces gin, such as Hendrick's\n"
                          " ¾ ounce fresh lemon juice\n"
                               "¾ ounce simple syrup\n"
                                  " 2 ounces Champagne\n"
                                   "Long spiral lemon twist (for serving)"
                               ),
                             ),
                           ),
                            const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Let's prepare",
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                 ),
                                ),
                              ),
                            ),
                           const Text("1. Add the gin, lemon juice and simple syrup to a shaker\n "
                               "2. with ice and shake until well-chilled.\n"
                               "3. Strain into a Champagne flute.\n"
                               "4. Top with the Champagne.\n"
                               "5. Garnish with a lemon twist.\n"
                               ),
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(30.0),
                                 child: ElevatedButton(
                                     onPressed: (){
                                     },
                           style: ButtonStyle(
                                 backgroundColor: MaterialStateProperty.all(Colors.red),
                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                     borderRadius: BorderRadius.only(bottomRight: Radius.circular(18)),

                                    )
                                 )
                            ),
                                     child: const Text("Did you made this"),),
                               ),
                               ElevatedButton(
                                   onPressed: (){},
                                   style: ButtonStyle(
                                     backgroundColor: MaterialStateProperty.all(Colors.red),
                                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                           const RoundedRectangleBorder(
                                               borderRadius:  BorderRadius.only(topLeft: Radius.circular(18)),

                                           )
                                       )
                                   ),
                                   child: const Text("Remove from Cart") ),
                             ],
                           )
                         ],
                       ),
                     ),
                 ),
              ),
             ],
            ),
             Positioned(
               top: 220,
               left: 135,
               child: Transform(
                 alignment: FractionalOffset.center,
                 transform: Matrix4.rotationZ(
                   3.1415926535897932 / 4,
                 ),
                 child: ClipRRect(
                   borderRadius: const BorderRadius.only(
                     topLeft: Radius.circular(15.0),
                     topRight: Radius.circular(60.0),
                     bottomRight: Radius.circular(15.0),
                     bottomLeft: Radius.circular(60.0),
                   ),
                   child: Container(
                     height: 150,
                     width: 150,
                     decoration: kGradientBoxDecoration,
                     child: Transform(
                       alignment: Alignment.center,
                       transform: Matrix4.rotationZ(
                         -3.1415926535897932 / 4,
                       ),
                       child: RotationTransition(
                         turns: const  AlwaysStoppedAnimation(0/360),
                         child: Image.asset(
                           "assets/images/french75.jpg",
                           height: 150,
                           width: 150,
                           fit: BoxFit.fill,
                         ),
                       ),
                     ),
                   ),
                 ),
               ),
             ),
          ],
         ),
    );
  }
}