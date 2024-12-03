import 'package:flutter/material.dart';

class taboule extends StatefulWidget {
  const taboule({super.key});

  @override
  State<taboule> createState() => _tabouleState();
}

class _tabouleState extends State<taboule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
          title: const Text('Taboule Recipe', style: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.amber[400]
      ),
      body:  SingleChildScrollView(
        child: Column(children: [

          const SizedBox(height: 30),
          Center(
            child: Text('Ingrediants:\n',style: const TextStyle(color: Colors.white, fontSize: 25 , fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: Text('-''2 cups of cooked and mashed chickpeas (garbanzo beans)\n\n'

              '-1 small clove of garlic, minced\n\n'

              '-2 tablespoons of olive oil\n\n'

              '-2 teaspoons of ground cumin\n\n'

              '-1/4 teaspoon of ground turmeric (optional, for color)\n\n'

          '-1 teaspoon of salt\n\n'

          '-1/4 cup of fresh parsley, chopped\n\n'

          '-Fresh lemon juice, to taste\n\n'

          '-1 cup of bulgur wheat\n\n'

          '-To make the tabouleh, first cook the chickpeas according to the package instructions. Once cooked, mash them with a fork or a potato masher until they are smooth. Set aside.\n\n'

          '-Next, in a medium bowl, combine the garlic, olive oil, cumin, turmeric (if using), salt, and chopped parsley. Toss the herbs well to combine their flavors.\n\n'

              '-To the herb mixture, add the cooked and mashed chickpeas, the bulgur wheat, and a generous drizzle of fresh lemon juice. Mix well to combine all the ingredients. Taste and adjust the seasoning to your preference.\n\n'

              '-Serve the tabouleh in a wide, shallow bowl. It can be served as a main dish, salad, or side dish, either by itself or with other vegetables, like cucumbers or tomatoes.\n\n'

              '-Enjoy your healthy, flavorful, and nutritious tabouleh!', style: const TextStyle(color: Colors.white, fontSize: 22 )),

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
