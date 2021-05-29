import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarPage(),
    );
  }
}

class CarPage extends StatefulWidget {
  @override
  _CarPageState createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFBC044), Color(0xFFD8992B)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.close,
                        size: 30,
                      )
                    ],
                  ),
                ),
                Text(
                  'Check Vehicle Availability',
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  cursorColor: Colors.white60,
                  style: TextStyle(fontSize: 30),
                  decoration: InputDecoration(
                      hintText: 'Enter pin here',
                      hintStyle: TextStyle(fontSize: 30),
                      prefixIcon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white60,
                      ),
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'We want to ensure the vehicle is available in your area of delivery',
                  style: TextStyle(color: Colors.white60, fontSize: 15),
                ),
                Image.asset(
                  'assets/porsche.png',
                  width: MediaQuery.of(context).size.width - 30,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20,bottom: 20),
                  child: Container(
                    color: Colors.white24,
                    height: 1,
                    width: MediaQuery.of(context).size.width-30,
                  ),
                ),
                Text('Been here before? Already have an Eleanor account?',style: TextStyle(color: Colors.white60),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Text('Sign In', style: TextStyle(color: Colors.white60, fontSize: 20),),
                      onTap: (){},
                    ),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward,color: Colors.white60,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
