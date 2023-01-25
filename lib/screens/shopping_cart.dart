import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_flutter/providers/shopping_cart.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text('${context.watch<ShoppingCart>().length}'),
            Text('${context.watch<ShoppingCart>().items}'),
          ],
        ),
      ),
    );
  }
}
