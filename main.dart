import 'package:flutter/material.dart';
import 'American.dart';
import 'Italian.dart';
import 'Lebanese.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void openPage2() {
    try {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Page2(),
          )
      );
    }
    catch(e) {
      print(e); // better to remove print in release version
    }
  }

  void openPage3() {
    try {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Page3(),
          )
      );
    }
    catch(e) {
      print(e); // better to remove print in release version
    }
  }

  void openPage4() {
    try {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Page4(),
          )
      );
    }
    catch(e) {
      print(e); // better to remove print in release version
    }
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.red[400],
       appBar: AppBar(
       title:
        const Text('Cuisines',style: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
         backgroundColor: Colors.amber[400],
       ),
       body:


       Center(child: Column(children: [
        const SizedBox(height: 10),
         Row(
             mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SizedBox(width: 150, height: 30,
               child: Text('American',style: const TextStyle(fontSize: 26,color: Colors.white),textAlign: TextAlign.center),
             ),
             const SizedBox(height: 10),
             ElevatedButton(onPressed: openPage2,
               child: const Icon(Icons.navigate_next, size: 35,color: Colors.amber),
             ),

           ],
         ),
         const SizedBox(height: 10),
         Image.network('https://www.roadunraveled.com/wp-content/uploads/2017/04/food-map-t.png',width: 500,height: 100),

             const SizedBox(height: 10),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(width: 150, height: 30,
                   child: Text('Italian',style: const TextStyle(fontSize: 26,color: Colors.white),textAlign: TextAlign.center),
                 ),
                 const SizedBox(height: 10),
                 ElevatedButton(onPressed: openPage3,
                     child: const Icon(Icons.navigate_next, size: 35,color: Colors.amber)
                 ),
               ],
             ),

         const SizedBox(height: 10),
         Image.network('https://food.fnr.sndimg.com/content/dam/images/food/fullset/2015/8/7/1/FN_Italian-Favorites-Opener_s4x3.jpg.rend.hgtvcom.616.462.suffix/1438990067345.jpeg',width: 500,height: 100),
             const SizedBox(height: 10),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SizedBox(width: 150, height: 30,
               child: Text('Lebanese',style: const TextStyle(fontSize: 26,color: Colors.white),textAlign: TextAlign.center),
             ),
             const SizedBox(height: 10),
             ElevatedButton(onPressed: openPage4,
                 child: const Icon(Icons.navigate_next, size: 35,color: Colors.amber)
             ),
           ],
         ),

         const SizedBox(height: 10),
         Image.network('https://aldarnairobi.com/wp-content/uploads/2023/09/Food-In-Lebanon.jpg',width: 500,height: 100),
         const SizedBox(height: 10)
       ]
       ),
      ),
     );
     }
    } // This trailing comma makes auto-formatting nicer for build methods.

