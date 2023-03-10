import 'package:buy_headphones_provider/provider/headphone_provider.dart';
import 'package:buy_headphones_provider/screens/catalog_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HeadphoneProvider(),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const CatalogScreen(),
      ),
    );
  }
}
