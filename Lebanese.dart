import 'package:flutter/material.dart';
import 'package:test2/taboule.dart';
import 'hummus.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {

  void openhummus(){
    try {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const hummus(),
          )
      );
    }
    catch (e) {
      print(e); // better to remove print in release version
    }
  }

  void opentaboule(){
    try {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const taboule(),
          )
      );
    }
    catch (e) {
      print(e); // better to remove print in release version
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        title: const Text('Lebanese Cuisine', style: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
          backgroundColor: Colors.amber[400]
      ),
      body: Center(child: Column(children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hummus  ', style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: openhummus,
              child: const Icon(Icons.navigate_next, size: 35,color: Colors.amber),
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Image.network('https://sweetsimplevegan.com/wp-content/uploads/2023/06/easy_homemade_hummus_sweet_simple_vegan_6-1.jpg',width: 800,height: 200,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Taboule  ', style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: opentaboule,
              child: const Icon(Icons.navigate_next, size: 35,color: Colors.amber),
            ),
          ],
        ),
        Image.network('https://b3067249.smushcdn.com/3067249/wp-content/uploads/2017/09/Taboule-848x477.jpg?lossy=0&strip=1&webp=1',width: 750,height: 200,),
        const SizedBox(height: 10,),

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
