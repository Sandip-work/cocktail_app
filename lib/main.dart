import 'package:cocktail/all_cocktails.dart';
import 'package:cocktail/buy_list.dart';
import 'package:cocktail/favourite_cocktails.dart';
import 'package:cocktail/made_by_you.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        )
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    var screenWidth = mediaQueryData.size.width;
    var screenHeight = mediaQueryData.size.height;
    var screenOrientation = mediaQueryData.orientation;

    return Scaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
        child: Stack(
          children: [
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

              const SizedBox(height: 50,),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AllCocktails()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    ),
                icon: const Icon(// <-- Icon
                  Icons.grid_view_rounded,
                  size: 24.0,
                  color: Colors.black,
                ),
                label: const Text("All Cocktails",
                style:TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                  ), // <-- Text
              ),
              const SizedBox(height: 20,),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BuyList()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                icon: const Icon( // <-- Icon
                  Icons.shopping_cart_rounded,
                  size: 24.0,
                  color: Colors.black,
                ),
                label: const Text("Buy List",
                  style:TextStyle(
                    color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ), // <-- Text
              ),
              const SizedBox(height: 20,),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FavouriteCocktails()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                icon: const Icon( // <-- Icon
                  Icons.favorite_outlined,
                  size: 24.0,
                  color: Colors.black,
                ),
                label: const Text("Favourite Cocktails",
                  style:TextStyle(
                    color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ), // <-- Text
              ),
              const SizedBox(height: 20,),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CocktailsMadeByYou()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                icon: const Icon( // <-- Icon
                  Icons.wine_bar_rounded,
                  size: 24.0,
                  color: Colors.black,
                ),
                label: const Text("Made Cocktails",
                  style:TextStyle(
                    color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ), // <-- Text
              ),

              const SizedBox(height: 100,),
              Align(
                alignment: Alignment.bottomRight,
                child: Stack(
                  children: <Widget>[
                 Container(
                  alignment: Alignment.bottomRight,
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.height * 0.20,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: <Color>[Color(0xff639cd9),Color(0xff5454c5)]),
                  ),
                   child: const Padding(
                     padding: EdgeInsets.only(left: 0,bottom: 80,right: 0,top: 0 ),
                     child: Text("Cocktails. v1.0",
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 18,
                         color: Colors.white,
                       ),),
                   ),
                ),
                ],
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
                    height: MediaQuery.of(context).size.height*0.10,
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
        ),
      ),
    );
  }
}