import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_flutter/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}): super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {

  //no use:
  // String selectedImagePath = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      //to scroll up and down in the screen
      body: SingleChildScrollView(
        child: Column(
          children: [

            //SizedBox is where an image or a text will be entered/placed
            const SizedBox(height: 50,),

            //need to add asset path to pubspec.yaml under material:true to access image assets
            Image.asset('assets/images/dish3.png',
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width,),

            const SizedBox(height: 50,),
            const Text(
              'Find the Perfect',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'recipes',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(width: 10,),
                Text(
                  'everyday',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Text(
              'More than 20 thousand recipes',
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
            const SizedBox(height: 5,),
            const Text(
              'of healthy food',
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),

            SizedBox(height: 40,),

            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
              elevation: 5.0,
              minWidth: MediaQuery.of(context).size.width/1.2,
              height: 60.0,
              color: Colors.yellow.shade200,

              //move from Home Screen to Product Screen
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()));
              },
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            )
          ]
        ),
      )
    );
  }
}
