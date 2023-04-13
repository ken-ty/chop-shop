import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'timeline_widget.dart';

import 'bloc_provider.dart';


/// The app is wrapped by a [BlocProvider]. This allows the child widgets
/// to access other components throughout the hierarchy without the need
/// to pass those references around.
class TimelineApp extends StatelessWidget {
  const TimelineApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return BlocProvider(
      platform: Theme.of(context).platform,
      t: Timeline(),
      child: const MaterialApp(
        title: 'History & Future of Everything',
        //theme: ThemeData(
        //backgroundColor: background, scaffoldBackgroundColor: background),
        home: MenuPage(),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: null, body: TimelineWidget(timeline));
  }
}

void main() => runApp(const TimelineApp());


