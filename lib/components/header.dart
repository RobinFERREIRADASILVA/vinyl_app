import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Stack(
      children: [
        Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
                color: Colors.black, border: Border(bottom: BorderSide.none))),
        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.transparent],
            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height - 10));
          },
          blendMode: BlendMode.dstIn,
          child: Image.network(
            'https://static.actu.fr/uploads/2019/01/deejay-1839788_1920-960x640.jpg',
            height: MediaQuery.of(context).size.height / 2.2,
            fit: BoxFit.cover,
          ),
        ),
      ],
    ));
  }
}
