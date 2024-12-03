import 'package:flutter/material.dart';

class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
          title: const Text('Burger Recipe', style: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.amber[400]
      ),
      body: SingleChildScrollView(
        child: Column(children: [
        Center(
          child: Text('Ingrediants:\n',style: const TextStyle(color: Colors.white, fontSize: 25 , fontWeight: FontWeight.bold)),
        ),
        Container(
            margin: EdgeInsets.all(25),

            child: Text(
                    '1 lb lean ground beef 1 large tomato, diced 1 small red onion, diced 1 small pickle, diced (optional) 2 large bread buns or burger buns'

                    'Ketchup or mayonnaise for serving\n\n'

                    'Directions:\n\n'

                    'In a large bowl, mix the ground beef with the diced tomato, red onion, and pickle (if using). Season with salt, pepper,'
                'and any additional spices or seasonings to taste.\n\n Cover and refrigerate for at least 1 hour, or overnight.\n\n'

            'Cook burgers according to package instructions, usually around 7-9 minutes per side. Transfer cooked burgers to a clean plate and let rest for a few minutes.\n\n'

            'Toast or grill the burger buns.\n\n'

            'Assemble the burgers by placing a cooked patty on each bun. Top with desired toppings, such as lettuce, tomato, pickles, or cheese.\n\n'

                'Finish each burger by drizzling with ketchup or mayonnaise. Serve immediately.\n\n'

                'Enjoy your delicious and simple burger!', style: const TextStyle(color: Colors.white, fontSize: 16 )
            )
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
