import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_flutter/providers/counter_provider.dart';
import 'package:providers_flutter/providers/shopping_cart.dart';
import 'package:providers_flutter/screens/home_screen.dart';
import 'package:providers_flutter/screens/shopping_cart.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => ShoppingCart()),
    ],
    child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' :(context) => const MyHomePage(),
        '/shopingCart' :(context) => const ShoppingCartPage(),
      },
    );
  }
}