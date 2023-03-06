import 'package:cocktail/french_75.dart';
import 'package:flutter/material.dart';

class CocktailsMadeByYou extends StatelessWidget {
  const CocktailsMadeByYou({super.key});

  @override
  Widget build(BuildContext context) {
    return const CocktailsMadeByYouPage(title: '');
  }
}

class CocktailsMadeByYouPage extends StatefulWidget {
  const CocktailsMadeByYouPage({super.key, required this.title});

  final String title;

  @override
  State<CocktailsMadeByYouPage> createState() => _CocktailsMadeByYouPageState();
}

class _CocktailsMadeByYouPageState extends State<CocktailsMadeByYouPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          width: 300,
                          height: 300,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: <Color>[Color(0xff639cd9),Color(0xff5454c5)]),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 40,bottom: 20,right: 20,top: 100),
                            child: Text("Cocktail",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: IconButton(onPressed: (){
                        Navigator.pop(context);
                      },
                        icon: const Icon(Icons.arrow_back_ios,
                          color: Colors.white,), ),
                    ),
                  ]
              ),

              const Padding(
                padding: EdgeInsets.all(16.0),
                child:  Text("Cocktails made by you"),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const Cocktail()),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 170,
                                  height: 120,
                                  margin: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 2,color: Colors.deepOrangeAccent),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: const Image(
                                      image: NetworkImage(
                                          'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 90,left: 10),
                                  child: TextButton(
                                    onPressed: () {

                                    },
                                    style: TextButton.styleFrom(
                                      shape:
                                      const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomLeft: Radius.circular(12)),
                                      ),

                                      backgroundColor: Colors.deepOrangeAccent,
                                      primary: Colors.white, // Text Color
                                    ),
                                    child: const Text("French 75"),),
                                )
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 170,
                                height: 120,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 2,color: Colors.deepOrangeAccent),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: const Image(
                                    image: NetworkImage(
                                        'https://images.pexels.com/photos/616836/pexels-photo-616836.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 90,left: 10),
                                child: TextButton(
                                  onPressed: () {

                                  },
                                  style: TextButton.styleFrom(
                                    shape:
                                    const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomLeft: Radius.circular(12)),
                                    ),

                                    backgroundColor: Colors.deepOrangeAccent,
                                    primary: Colors.white, // Text Color
                                  ),
                                  child: const Text("Negroni"),),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Row(
                        children: [

                          Stack(
                            children: [
                              Container(
                                width: 170,
                                height: 120,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 2,color: Colors.deepOrangeAccent),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: const Image(
                                    image: NetworkImage(
                                        'https://images.pexels.com/photos/1304540/pexels-photo-1304540.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 90,left: 10),
                                child: TextButton(
                                  onPressed: () {

                                  },
                                  style: TextButton.styleFrom(
                                    shape:
                                    const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomLeft: Radius.circular(12)),
                                    ),

                                    backgroundColor: Colors.deepOrangeAccent,
                                    primary: Colors.white, // Text Color
                                  ),
                                  child: const Text("Martini"),),
                              ),
                            ],
                          ),


                          Stack(
                            children: [
                              Container(
                                width: 170,
                                height: 120,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 2,color: Colors.deepOrangeAccent),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: const Image(
                                    image: NetworkImage(
                                        'https://images.pexels.com/photos/2795026/pexels-photo-2795026.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 90,left: 10),
                                child: TextButton(
                                  onPressed: () {

                                  },
                                  style: TextButton.styleFrom(
                                    shape:
                                    const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomLeft: Radius.circular(12)),
                                    ),

                                    backgroundColor: Colors.deepOrangeAccent,
                                    primary: Colors.white, // Text Color
                                  ),
                                  child: const Text("Margarita sangria"),),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 170,
                                height: 120,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 2,color: Colors.deepOrangeAccent),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: const Image(
                                    image: NetworkImage(
                                        'https://images.pexels.com/photos/2480828/pexels-photo-2480828.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 90,left: 10),
                                child: TextButton(
                                  onPressed: () {

                                  },
                                  style: TextButton.styleFrom(
                                    shape:
                                    const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomLeft: Radius.circular(12)),
                                    ),

                                    backgroundColor: Colors.deepOrangeAccent,
                                    primary: Colors.white, // Text Color
                                  ),
                                  child: const Text("Apple Cider"),),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 170,
                                height: 120,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 2,color: Colors.deepOrangeAccent),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: const Image(
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1587223962930-cb7f31384c19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 90,left: 10),
                                child: TextButton(
                                  onPressed: () {

                                  },
                                  style: TextButton.styleFrom(
                                    shape:
                                    const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(12),
                                          bottomLeft: Radius.circular(12)),
                                    ),

                                    backgroundColor: Colors.deepOrangeAccent,
                                    primary: Colors.white, // Text Color
                                  ),
                                  child: const Text("Raspberry Bellinis"),),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 120,left: 280),
            child: Stack(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all( Radius.circular(20)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Color(0xffE44D2E),Color(0xffce2029)]),
                  ),
                ),
                const Icon(Icons.wine_bar,
                  size: 80,
                  color: Colors.white,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}