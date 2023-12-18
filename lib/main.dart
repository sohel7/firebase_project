import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gatex_firebase/count.dart';
import 'package:gatex_firebase/firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: false,
      ),
      home: MatchListScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter in firebase"),
        centerTitle: true,
      ),
      body: Center(
        child:
        Text('Hello Flutter Developer'),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
