import 'package:flutter/material.dart';
import 'macncheese.dart';
import 'burger.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  void openBurger() {
    try {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Burger(),
          )
      );
    }
    catch(e) {
      print(e); // better to remove print in release version
    }
  }

  void openMac() {
    try {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Mac(),
          )
      );
    }
    catch(e) {
      print(e); // better to remove print in release version
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        title: const Text('American Cuisine', style: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
          backgroundColor: Colors.amber[400]
      ),
      body: Center(child: Column(children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('Burger  ', style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
            ElevatedButton(onPressed: openBurger,
              child: const Icon(Icons.navigate_next, size: 35,color: Colors.amber),
            ),
          ]

        ),
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxZuMHYc8LEIRIh7G21F3n-uy5B2qJW85C1A&usqp=CAU'),

        const SizedBox(height: 10),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('Mac and Cheese  ', style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
              ElevatedButton(onPressed: openMac,
                child: const Icon(Icons.navigate_next, size: 35,color: Colors.amber),
              ),
            ]
        ),
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYs6EDBMfh_87XxxtAiVOXsdzBWjZLaiqn5Q&usqp=CAU'),
        const SizedBox(height: 10),
        ElevatedButton(onPressed: () {
          Navigator.of(context).pop();
        },
            child: const Icon(Icons.navigate_before, size: 50,color: Colors.amber)
        )
      ]),
      ),
    );
  }
}
