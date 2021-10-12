import 'package:flutter/material.dart';
import 'package:jasim/second_page.dart';

void main() {
  runApp(const MyApp());

}
String btnText1="Tap Button";
Color btnColor1=Colors.red;
bool img1Visibility=false;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       centerTitle: true,
        title: Text("jasim"),
      ),
    body: SingleChildScrollView(
      child: Center(
        child: Column(
        children: [
          ElevatedButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute
                  (builder:(context)=>SecondPage()));



              },
              child: Text("Go To Second page")
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            color:btnColor1,
              child: Text(btnText1,style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),),
              onPressed:(){
              setState(() {
                btnText1="Button Pressed";
                btnColor1=Colors.black12;
                img1Visibility=true;

              });

          }),
       SizedBox(
         height: 10,
       ),
       Visibility(
         visible: img1Visibility,
           child:
           Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg"))

        ],
        ),
      ),
    ),
    );
  }
}
