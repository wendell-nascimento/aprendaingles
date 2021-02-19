import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Numeros extends StatefulWidget {
  @override
  _NumerosState createState() => _NumerosState();
}

_tocarSom(String numero){
  AudioCache audioCache = AudioCache(prefix: "assets/audios/");
  String url = "$numero.mp3";
  audioCache.play(url);
}

class _NumerosState extends State<Numeros> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: (){
            _tocarSom("1");
          },
          child: Image.asset("assets/images/1.png"),
        ),
        GestureDetector(
          onTap: (){
            _tocarSom("2");
          },
          child: Image.asset("assets/images/2.png"),
        ),
        GestureDetector(
          onTap: (){
            _tocarSom("3");
          },
          child: Image.asset("assets/images/3.png"),
        ),
        GestureDetector(
          onTap: (){
            _tocarSom("4");
          },
          child: Image.asset("assets/images/4.png"),
        ),
        GestureDetector(
          onTap: (){
            _tocarSom("5");
          },
          child: Image.asset("assets/images/5.png"),
        ),
        GestureDetector(
          onTap: (){
            _tocarSom("6");
          },
          child: Image.asset("assets/images/6.png"),
        ),
      ],

    );
  }
}
