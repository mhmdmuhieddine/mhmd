import 'package:flutter/material.dart';

class Pizza extends StatefulWidget {
  const Pizza({super.key});

  @override
  State<Pizza> createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
          title: const Text('Pizza Recipe', style: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.amber[400]
      ),
      body: SingleChildScrollView(
        child: Column(children: [

          const SizedBox(height: 30),
          Center(
            child: Text('For the pizza toppings:\n'
                ,style: const TextStyle(color: Colors.white, fontSize: 25 , fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: Text(
                '-8 ounces shredded mozzarella cheese\n\n'
            '-8 ounces fresh spinach, roughly chopped\n\n'
            '-1 red bell pepper, seeded and diced\n\n'
                '-1 cup thinly sliced mushrooms\n\n'
                'Directions:\n\n'

                '-Preheat your oven to 475 degrees F (250 degrees C).\n\n'

                '-Roll out the dough on a lightly floured surface into a round and thin pizza crust.\n\n'

            '-Spread a thin layer of tomato sauce over the pizza crust.\n\n'

            '-Top the pizza with a generous amount of shredded mozzarella cheese, spinach, red bell pepper, and mushrooms.\n\n'

            '-Bake the pizza in the preheated oven for 10-12 minutes, or until the crust is golden brown and the cheese is bubbly and slightly crispy.\n\n'

            '-Remove the pizza from the oven and let it cool for a few minutes.\n\n'

            '-Cut the pizza into slices and serve immediately with a side salad.\n\n'

            '-Enjoy your homemade pizza! Feel free to customize the recipe by adding your favorite toppings or by using different types of cheese, vegetables, or sauces.',
                style: const TextStyle(color: Colors.white, fontSize: 22 )),

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
