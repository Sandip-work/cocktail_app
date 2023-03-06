
import 'package:cocktail/buy_ingredients.dart';
import 'package:flutter/material.dart';

class BuyList extends StatelessWidget {
  const BuyList({super.key});

  @override
  Widget build(BuildContext context) {
    return const BuyListPage(title: 'Flutter Demo Home Page');
  }
}

class BuyListPage extends StatefulWidget {
  const BuyListPage({super.key, required this.title});

  final String title;

  @override
  State<BuyListPage> createState() => _BuyListPageState();
}

class _BuyListPageState extends State<BuyListPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
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
                child:  Text("Buy List"),
              ),
              Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                               Container(
                                width: 100,
                                height: 100,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 2,color: Colors.orangeAccent),
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

                            Column(
                              children: const  [
                                 Align(
                                     alignment: Alignment.topLeft,
                                     child: Text("French 75")),
                                 SizedBox(height: 10,),
                                 Text("Yield: 8 servings",
                                 style: TextStyle(
                                   fontWeight: FontWeight.bold
                                 ),
                                 ),
                              ],
                            ),
                            const SizedBox(width: 100,),

                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(width: 2, color: const Color(0xff5454c5)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child:  Icon(Icons.delete,
                                  color: Color(0xff5454c5),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(width: 2,color: Colors.orangeAccent),
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
                            Column(
                              children: const <Widget>[
                                 Text("Negroni"),
                              ],
                            ),
                            const SizedBox(width: 160,),

                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(width: 2, color: const Color(0xff5454c5)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child:  Icon(Icons.delete,
                                  color: Color(0xff5454c5),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(width: 2,color: Colors.orangeAccent),
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
                            Column(
                              children: const [
                                Text("Espresso Martini"),
                                SizedBox(height: 10,),
                                Text("Yield: 1 servings",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),)
                              ],
                            ),
                            const SizedBox(width: 100,),

                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(width: 2, color: const Color(0xff5454c5)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child:  Icon(Icons.delete,
                                  color: Color(0xff5454c5),
                                ),
                              ),
                            ),
                          ],
                        ),

                         Padding(
                           padding: const EdgeInsets.only(left: 180.0,top: 50),
                           child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => const BuyIngredients()));
                            },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(40),
                                      topLeft: Radius.circular(40),
                                      bottomLeft: Radius.circular(40),
                                    )
                                  ),
                                  backgroundColor: Colors.redAccent
                                ),
                                child: const Text("Buy Ingredients",
                                )
                            ),
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
                  // alignment: Alignment.center,
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