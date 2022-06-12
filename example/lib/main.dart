import 'package:flutter/material.dart';
import 'package:glitch_text/glitch_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * .2,
                width: screenWidth,
                child: Row(
                  children: const [
                    GlitchText(
                      //text content : data
                      data: "Glitch Text",
                      overflow: TextOverflow.ellipsis,
                      //font family from assets
                      font: "hacked",
                      fontSize: 90,
                      //offset of shadow
                      offset: 3,
                      wordSpacing: 1,
                      fontColor: Colors.black,
                      letterSpacing: 1,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
