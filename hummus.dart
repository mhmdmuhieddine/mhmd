import 'package:flutter/material.dart';

class hummus extends StatefulWidget {
  const hummus({super.key});

  @override
  State<hummus> createState() => _hummusState();
}

class _hummusState extends State<hummus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
          title: const Text('Hummus Recipe', style: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
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
               child: Text('-1/2 cup of cooked and mashed chickpeas (also known as garbanzo beans)\n\n'

                   '-2 cloves of garlic, minced\n\n'

                   '-1/4 cup of tahini (a thick, smooth paste made from ground sesame seeds)\n'

                   '-2 tablespoons of fresh lemon juice (or to taste)\n'

                   '-1 teaspoon of smoked paprika (optional, for color and flavor)\n'

                   '-Salt, to taste\n\n'

                   '-Optional toppings: pita bread, fresh herbs like parsley or cilantro, and/or fresh tomatoes or cucumbers.\n\n'

                   '-To make the hummus, combine all the ingredients in a food processor.\n Start by processing the chickpeas and garlic until they form a paste.\n Then, gradually add the tahini and lemon juice, blending well after each addition.\n You can also add the smoked paprika and salt at this stage. Once the hummus is well mixed and smooth, its ready to serve.\n'

                   '\n-Enjoy the hummus as a dip or spread, either by itself or with your choice of toppings. Its great as a vegan or vegetarian option and pairs well with just about any appetizer or salad.', style: const TextStyle(color: Colors.white, fontSize: 22 )),

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
