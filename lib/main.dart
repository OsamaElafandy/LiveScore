import 'package:awesome_loader/awesome_loader.dart';
import 'package:flutter/material.dart';
import 'package:livescore/services/api_service.dart';
import 'package:livescore/pages/match_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SOCCERBOARD",
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 37, 44, 66),
      ),
      home: const SoccerApp(),
    );
  }
}

class SoccerApp extends StatefulWidget {
  const SoccerApp({Key key}) : super(key: key);

  @override
  _SoccerAppState createState() => _SoccerAppState();
}

class _SoccerAppState extends State<SoccerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0.0,
        title: const Text(
          "SOCCERBOARD",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: ApiService().getAllMatches(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MatchHome(allmatches: snapshot.data);
          } else {
            return const Center(
              child: AwesomeLoader(
                loaderType: AwesomeLoader.AwesomeLoader2,
                color: Colors.black,
              ),
            );
          }
        },
      ),
    );
  }
}
