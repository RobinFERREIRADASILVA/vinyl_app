import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vinyl App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _username = '';

  @override
  void initState() {
    super.initState();
    setState(() {
      _username = 'Robin';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border(bottom: BorderSide.none))),
            ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(
                    Rect.fromLTRB(0, 0, rect.width, rect.height - 10));
              },
              blendMode: BlendMode.dstIn,
              child: Image.network(
                'https://static.actu.fr/uploads/2019/01/deejay-1839788_1920-960x640.jpg',
                height: MediaQuery.of(context).size.height / 2.2,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),

        // Container(
        //   height: MediaQuery.of(context).size.height / 2.2,
        //   color: Colors.black,
        //   child: Image.network(
        //     'https://static.actu.fr/uploads/2019/01/deejay-1839788_1920-960x640.jpg',
        //     fit: BoxFit.fitHeight,
        //     colorBlendMode: BlendMode.dstIn,
        //   ),
        // ),
        Expanded(
          child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black, border: Border(top: BorderSide.none)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: Text("Vinyl's Dub App",
                        style: GoogleFonts.merriweather(
                            color: Colors.white, fontSize: 34)),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.indigo,
                          elevation: 4,
                          primary: Colors.white,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 2.8,
                              right: MediaQuery.of(context).size.width / 2.8)),
                      child: Text('Se connecter',
                          style: GoogleFonts.robotoCondensed(
                              color: Colors.black, fontSize: 16))),
                              sioze
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.indigo,
                          elevation: 4,
                          primary: Colors.white,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 2.56,
                              right: MediaQuery.of(context).size.width / 2.56)),
                      child: Text("S'inscrire",
                          style: GoogleFonts.robotoCondensed(
                              color: Colors.black, fontSize: 16)))
                ],
              )),
        )
      ],
    ));
  }
}
