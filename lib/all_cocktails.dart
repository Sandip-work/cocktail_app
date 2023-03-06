import 'package:cocktail/french_75.dart';
import 'package:flutter/material.dart';

class AllCocktails extends StatelessWidget {
  const AllCocktails({super.key});

  @override
  Widget build(BuildContext context) {
    return const AllCocktailsPage(title: 'Flutter Demo Home Page');
  }
}

class AllCocktailsPage extends StatefulWidget {
  const AllCocktailsPage({super.key, required this.title});

  final String title;

  @override
  State<AllCocktailsPage> createState() => _AllCocktailsPageState();
}

class _AllCocktailsPageState extends State<AllCocktailsPage> {

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
                          width: MediaQuery.of(context).size.width*0.80,
                          height: MediaQuery.of(context).size.height * 0.30,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: <Color>[Color(0xff639cd9),Color(0xff5454c5)]),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 40,bottom: 20,right: 20,top: 100),
                            child: Text("It's time for cocktail.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white,
                              ),),
                          ),
                        ),
                      ],
                    ),
                  ]
              ),

              const Padding(
                padding: EdgeInsets.all(16.0),
                child:  Text("All Cocktails"),
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
                            child: Container(
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
                          ),
                          const Text("French 75"),
                          const SizedBox(width: 150,),

                          Column(
                            children: const [
                              Icon(Icons.favorite_outlined,
                              color: Colors.orange,),
                              SizedBox(height: 20 ,),
                              Icon(Icons.wine_bar,
                              color: Colors.red,)
                            ],
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
                      const Text("Negroni"),
                      const SizedBox(width: 170,),

                      Column(
                        children: const [
                          Icon(Icons.favorite_border,
                            color: Colors.orange),

                          SizedBox(height: 20 ,),

                          Icon(Icons.wine_bar,
                            color: Colors.red,)
                        ],
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
                      const Text("Espresso Martini"),
                      const SizedBox(width: 110,),

                      Column(
                        children: const [
                          Icon(Icons.favorite_outlined,
                            color: Colors.orange,),

                          SizedBox(height: 20 ,),

                          Icon(Icons.wine_bar_outlined,
                            color: Colors.red,)
                        ],
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
                                'https://images.pexels.com/photos/2795026/pexels-photo-2795026.jpeg?auto=compress&cs=tinysrgb&w=600'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(" Mojito"),
                      const SizedBox(width: 170,),

                      Column(
                        children: const [
                          Icon(Icons.favorite_border,
                              color: Colors.orange),

                          SizedBox(height: 20 ,),

                          Icon(Icons.wine_bar,
                            color: Colors.red,)
                        ],
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
                                    'https://images.pexels.com/photos/2480828/pexels-photo-2480828.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Text("Aqua Velva"),
                          const SizedBox(width: 150,),

                          Column(
                            children: const [
                              Icon(Icons.favorite,
                                  color: Colors.orange),

                              SizedBox(height: 20 ,),

                              Icon(Icons.wine_bar,
                                color: Colors.red,)
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
                    // alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.height*0.1,
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