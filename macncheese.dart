import 'package:flutter/material.dart';

class Mac extends StatefulWidget {
  const Mac({super.key});

  @override
  State<Mac> createState() => _MacState();
}

class _MacState extends State<Mac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
          title: const Text('Mac and Cheese Recipe', style: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.amber
      ),
      body:SingleChildScrollView(
        child: Column(children: [

          const SizedBox(height: 30),
          Center(
            child: Text('Ingrediants:\n'
                ,style: const TextStyle(color: Colors.white, fontSize: 25 , fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: Text(
                '-1 lb pasta (macaroni, elbow, or a combination)\n\n '
                    '-2 cups whole milk or heavy cream \n\n'
                    '-1 cup all-purpose flour \n\n'
                    '-1/2 teaspoon salt \n\n'
                    '-8 oz shredded sharp cheddar cheese \n\n'
                    '-4 oz shredded cream cheese \n\n'
                    '-2 tablespoons butter, softened\n\n'

                    'Directions:\n\n'

                    '-In a medium pot, bring 4 cups of water to a boil. Add the pasta and cook according to the package instructions, usually around 8-10 minutes or until tender but still chewy. Drain the pasta in a colander and set aside.\n\n'

                    '-While the pasta is cooking, prepare the mac and cheese sauce. In a large saucepan, heat the milk, cream, flour, and salt over medium heat, stirring constantly, until the sauce thickens and coats the back of a spoon. Remove the saucepan from the heat.\n\n'

                    '-Stir in the shredded sharp cheddar cheese and cream cheese until well combined. Gradually pour the sauce over the cooked pasta in the colander, stirring until all the pasta is coated evenly.\n\n'

                    '-Top the mac and cheese with the softened butter, reserving a small amount for additional topping.\n\n'

                    '-Sprinkle the reserved butter over the mac and cheese and use a fork to melt the butter and distribute it evenly throughout the dish.\n\n'

                    '-Serve the mac and cheese immediately and enjoy!', style: const TextStyle(color: Colors.white, fontSize: 22 )),

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
