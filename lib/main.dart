import 'package:eduvice/widget/responsiveness.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBy2p2CIkYU0puJjgbFM7-aHCYDe0cepnA",
          authDomain: "eduvice-4d32d.firebaseapp.com",
          projectId: "eduvice-4d32d",
          storageBucket: "eduvice-4d32d.appspot.com",
          messagingSenderId: "947626821803",
          appId: "1:947626821803:web:f34e51b56321eb696b0fee",
          measurementId: "G-T4Z0Z71370"));
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'eduvice',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Responsiveness(),
          );
        });
  }
}
