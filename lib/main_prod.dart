import 'package:firebase_core/firebase_core.dart';
import 'package:flavor_example/firebase_options_prod.dart';
import 'package:flavor_example/global.dart';
import 'package:flavor_example/home.dart';
import 'package:flavor_example/urls.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  Global.baseUrl = Urls.prodBaseUrl;
  WidgetsFlutterBinding.ensureInitialized();

  ///Firebase initialization
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    name: 'flavor example',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flavor Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}
