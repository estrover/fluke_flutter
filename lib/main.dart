import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter",
      home: const MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Flutter~~~"),
      ),
      body: Center(
        child: Column(children: const [Calculator(), Calculator()]),
        // child: Image(image: NetworkImage("https://inasianspaces.files.wordpress.com/2020/10/lelouch-ep-25-final.png")),
        // child: Text("Hello everyone~~~", style: TextStyle(fontSize: 30, color: Colors.deepOrange),),
      ),
      // app
      // Text("My Flutter"),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50.0),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Image(
            image: NetworkImage(
                "https://inasianspaces.files.wordpress.com/2020/10/lelouch-ep-25-final.png")),
        Text(
          "All Hail Lelouch,",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange),
        ),
        Text(
          "All Hail Britania",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange),
        ),
      ]),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
      child: Column(
        children: [
          const Text(
            "กดปุ่มเพื่อชาบู Lelouch",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text("$number",
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 60, child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Stack(children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFFF4511E),
                          Color(0xFFFF5722),
                          Color(0xFFFF7043),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      number++;
                    });
                  },
                  child: const Icon(Icons.person_add),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 50),
                  ),
                )
              ])),
          ),
          
        ],
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({ Key? key }) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("My Flutter~~~"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Image(image: NetworkImage("https://inasianspaces.files.wordpress.com/2020/10/lelouch-ep-25-final.png")),
//               Text("All Hail Lelouch,", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.deepOrange),),
//               Text("All Hail Britania", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.deepOrange),)
//             ],
//           ),
//           // child: Image(image: NetworkImage("https://inasianspaces.files.wordpress.com/2020/10/lelouch-ep-25-final.png")),
//           // child: Text("Hello everyone~~~", style: TextStyle(fontSize: 30, color: Colors.deepOrange),),
//         ),
//         // app
//         // Text("My Flutter"),
//     );
//   }
// }