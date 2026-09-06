import 'package:flutter/material.dart';
import 'package:servicios_modelos_app/theme.dart';
import 'package:servicios_modelos_app/ui/product/product_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Servicios',
      theme: appTheme,
      home: ProductView()
    );
  }
}
