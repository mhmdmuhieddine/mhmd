import 'package:flutter/material.dart';
import 'pizza.dart';
import 'pasta.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  void openPizza() {
    try {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Pizza(),
          )
      );
    }
    catch (e) {
      print(e); // better to remove print in release version
    }
  }

  void openpasta() {
    try {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const pasta(),
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
        title: const Text('Italian Cuisine', style: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
          backgroundColor: Colors.amber[400]
      ),
      body: Center(child: Column(children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pizza  ', style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            ElevatedButton(onPressed: openPizza,
              child: const Icon(Icons.navigate_next, size: 35,color: Colors.amber),
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg/800px-Eq_it-na_pizza-margherita_sep2005_sml.jpg',width: 750,height: 150,),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pasta  ', style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            ElevatedButton(onPressed: openpasta,
              child: const Icon(Icons.navigate_next, size: 35,color: Colors.amber),
            ),
          ],
        ),
        Image.network('https://www.foodandwine.com/thmb/c-MBu_vMHq3EcoN_KPxwg-oZjKo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Pasta-Aglio-E-Olio-2-FT-RECIPE0123-38cd2045646a4635a80e8166f085fc7e.jpg',width: 800,height: 150,),
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
