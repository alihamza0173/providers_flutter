import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_flutter/providers/counter_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
              const Count(),
              ElevatedButton(
                key: const Key('shopping_cart'),
                onPressed: (){
                Navigator.pushNamed(context, '/shopingCart');
              }, child: const Text('ShoppingCart')),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              key: const Key('decrement_floatingActionButton'),
              onPressed: () {
                context.read<Counter>().decrement();
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 10.0),
            FloatingActionButton(
              key: const Key('reset_floatingActionButton'),
              onPressed: () {
                context.read<Counter>().reset();
              },
              tooltip: 'Reset',
              child: const Icon(Icons.exposure_zero),
            ),
            const SizedBox(width: 10.0),
            FloatingActionButton(
              key: const Key('increment_floatingActionButton'),
              onPressed: () {
                context.read<Counter>().increment();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ));
  }
}

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Counter>().counter}',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
