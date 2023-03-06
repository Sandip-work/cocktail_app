
import 'package:cocktail/ingredients_by_recipe.dart';
import 'package:flutter/material.dart';

class BuyIngredients extends StatelessWidget {
  const BuyIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    return const BuyIngredientsPage(title: '');
  }
}

class BuyIngredientsPage extends StatefulWidget {
  const BuyIngredientsPage({super.key, required this.title});

  final String title;

  @override
  State<BuyIngredientsPage> createState() => _BuyIngredientsPageState();
}

class _BuyIngredientsPageState extends State<BuyIngredientsPage> {
  bool isPressed = true;
  bool isPressed2 = true;
  var selectedTab = 1;
  final ingredients = [
    "Lemon peel",
   "22 ml Simple Syrup",
   "22 ml Fresh lemon juice",
    "45 ml gin",
    "30 ml Champagne",
    "1 cup orange juice",
    "2 cups cranberry juice",
    "Glass: Champagne flute",
  ];
  final french75 = [
    "Lemon peel",
    "22 ml Simple Syrup",
    "22 ml Fresh lemon juice",
    "45 ml gin",
    "30 ml Champagne",
    "Glass: Champagne flute",
  ];
  final cranberryOrange = [
   "cranberry juice",
   "orange juice",
    "Champagne"
  ];

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
                    Padding(
                      padding: const EdgeInsets.only(top: 50,left: 30),
                      child: IconButton(onPressed: (){
                        Navigator.pop(context);
                      },
                        icon: const Icon(Icons.drive_folder_upload_outlined,
                          color: Colors.white,), ),
                    ),
                  ]
              ),
              const SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 70.0),
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          /*setState(
                                () {
                                  selectedTab = 1;
                              isPressed = !isPressed;
                            },
                          );*/
                        },
                        style: ElevatedButton.styleFrom(
                            shape:  const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                )
                            ),
                            backgroundColor: Colors.redAccent
                        ),
                        child:
                        const Text("By Ingredients",
                          style: TextStyle(
                            color: Colors.black
                          ),
                        )
                    ),
                    const SizedBox(width: 10,),
                    ElevatedButton(
                        onPressed: (){
                          /*setState(
                                () {
                                  selectedTab = 2;
                              isPressed2 = !isPressed2;
                            },
                          );*/
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const BuyIngredientsByRecipe()));
                        },
                        style: ElevatedButton.styleFrom(
                            shape:  const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                )

                            ),
                            backgroundColor: Colors.white
                        ),
                        child:
                        const Text("By Recipe",
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                    ),
                  ],
                ),
              ),

              const Padding(
                padding:  EdgeInsets.all(20.0),
                child: Text("All Ingredients",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                ),
              ),

              Expanded(
                child:
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: 8,
                          itemBuilder: (context,index){
                          return  ListTile(
                            title: Text(ingredients[index].toString(),
                            style: const TextStyle(
                              color: Colors.black
                            ),
                            ),
                            leading: const Icon(Icons.circle_outlined,
                            color: Colors.black,),
                            trailing: const Icon(Icons.close,
                            color: Colors.black,),
                          );
                          },
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