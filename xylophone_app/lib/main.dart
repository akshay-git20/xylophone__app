// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ButtonForapp(num: 1).color(Colors.red).expand(),
            ButtonForapp(num: 2).color(Colors.blue).expand(),
            ButtonForapp(num: 3).color(Colors.black).expand(),
            ButtonForapp(num: 4).color(Colors.orange).expand(),
            ButtonForapp(num: 5).color(Colors.purple).expand(),
            ButtonForapp(num: 6).color(Colors.pink).expand(),
            ButtonForapp(num: 7).color(Colors.yellow).expand(),
          ],
        ),
      )),
    );
  }
}

class ButtonForapp extends StatelessWidget {
  final int num ;
  const ButtonForapp({
    Key? key,
    required this.num,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (() async {
          final player = AudioPlayer();

          await player.play(AssetSource(("note${num}.wav")));
        }),
        child: "".text.make());
  }
}
