import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Bichos extends StatefulWidget {
  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  String _imagesDirectory = "assets/images";

  //AudioPlayer _audioPlayer = AudioPlayer();
  AudioCache _audioCache = AudioCache(prefix: "assets/audios/" );

  _tocarSom(String nomeDoAnimal){
     String url = "$nomeDoAnimal.mp3";
     _audioCache.play(url);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioCache.loadAll([
      "cao.mp3","gato.mp3","leao.mp3","macaco.mp3","ovelha.mp3","vaca.mp3",
    ]);
  }

  @override
  Widget build(BuildContext context) {

    return GridView.count(
        crossAxisCount: 2,
       childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: (){
            _tocarSom("cao");
          },
          child: Image.asset("$_imagesDirectory/cao.png"),
        ),
        GestureDetector(
          onTap: (){
            _tocarSom("gato");
          },
          child: Image.asset("$_imagesDirectory/gato.png"),
        ),
        GestureDetector(
          onTap: (){
            _tocarSom("leao");
          },
          child: Image.asset("$_imagesDirectory/leao.png"),
        ),
        GestureDetector(
          onTap: (){
            _tocarSom("macaco");
          },
          child: Image.asset("$_imagesDirectory/macaco.png"),
        ),
        GestureDetector(
          onTap: (){
            _tocarSom("ovelha");
          },
          child: Image.asset("$_imagesDirectory/ovelha.png"),
        ),
        GestureDetector(
          onTap: (){
            _tocarSom("vaca");
          },
          child: Image.asset("$_imagesDirectory/vaca.png"),
        ),
      ],
    );
  }
}
