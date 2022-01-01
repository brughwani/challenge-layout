import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
   return Scaffold(
      backgroundColor:Colors.teal,
      body:  
      Row(children: [
  Flexible(
    //height:double.infinity,
    flex:1,
    child: Container(
    width:100,
    height: size.height,
    color:Colors.red
  )
 ),
Flexible(
  flex: 3,
  child: Container(
  width: size.width,
  height: size.height,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Center(
      child:Container(
        width:100,height:100,
        color: Colors.yellow,
      )
    ),
    Center(
      child:Container(
        width:100,height:100,
        color: Colors.green,
      )
    )
  ],
)
),
),
Flexible(
  child:   
  Container(
    height:size.height,
    width:100,
    color:Colors.blue
  )
)


      ],
      
      )
   );
      
      
   
  }

}
