import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mess_tag/HostelerUi.dart';
import 'firebase_options.dart';
import 'Authentication/UserAuth.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if (kIsWeb) {
    FirebaseAuth.instance.setPersistence(Persistence.LOCAL);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/hui': (BuildContext context) => const HostelerUi(),
        // '/CategoryPage': (BuildContext context) => const CategoryPage(),
        // '/testmodule': (BuildContext context) => const TestModule(),
        // '/achieve': (BuildContext context) => const AchieveModule(),
      },
      title: 'Mess Tag',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  AnimatedSplashScreen(
          splash: Text("Mess Tag", style: TextStyle(
              fontSize: 60
          ),),
          nextScreen: UserAuth()
      ),
    );
  }
}

