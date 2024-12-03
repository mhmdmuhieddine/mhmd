import 'package:flutter/material.dart';

class pasta extends StatefulWidget {
  const pasta({super.key});

  @override
  State<pasta> createState() => _pastaState();
}

class _pastaState extends State<pasta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
          title: const Text('Pasta Recipe', style: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.amber[400]
      ),
      body: SingleChildScrollView(
        child: Column(children: [

          const SizedBox(height: 30),
          Center(
            child: Text('Ingrediants:\n',style: const TextStyle(color: Colors.white, fontSize: 25 , fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: Text(
                '-1 pound of pasta, such as penne, rigatoni, or spaghetti\n\n'
                    '-1 1/2 cups of boiling water, such as a large pot of pasta water\n\n'
                    '-2 tablespoons of unsalted butter or extra virgin olive oil\n\n'
                    '-Salt, pepper, and red pepper flakes, to taste\n\n'
                    '-Optional toppings: grated Parmesan cheese, chopped fresh basil, or a drizzle of extra virgin olive oil\n\n'
                    'Directions:\n\n'

                    '-Bring a large pot of water to a boil. Add the pasta to the boiling water and cook according to the package instructions until al dente.\n\n'

                    '-Drain the pasta in a colander and rinse with boiling water to stop the cooking process. Drain again and set aside.\n\n'

                    '-In a large non-stick skillet over medium heat, add the butter or olive oil. When the butter or oil is melted, add the drained pasta to the skillet and toss to coat with the butter or oil.\n\n'

                    '-Season the pasta with salt, pepper, and red pepper flakes. If desired, sprinkle the grated Parmesan cheese, chopped fresh basil, or drizzle with extra virgin olive oil on top of the pasta.\n\n'

                    '-Toss the pasta again in the skillet to combine the cheese or basil with the pasta and coat with the sauce.\n\n'

                    '-Serve the pasta immediately and enjoy!', style: const TextStyle(color: Colors.white, fontSize: 22 )),

          ),

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