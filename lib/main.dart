import 'package:automatic_anime_choice/historical.dart';
import 'package:automatic_anime_choice/magic.dart';
import 'package:automatic_anime_choice/mecha.dart';
import 'package:automatic_anime_choice/military.dart';
import 'package:automatic_anime_choice/psychological.dart';
import 'package:automatic_anime_choice/romance.dart';
import 'package:automatic_anime_choice/supernatural.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:automatic_anime_choice/action.dart';
import 'package:automatic_anime_choice/comedy.dart';
import 'package:automatic_anime_choice/welcome_screen.dart';
import 'package:automatic_anime_choice/a_slice_of_life.dart';
import 'package:automatic_anime_choice/drama.dart';
import 'package:automatic_anime_choice/tradegy.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MaterialApp(
        initialRoute: 'welcome_screen',
        routes: {
          'welcome_screen':(context) => const WelcomeScreen(),
          'action':(context) => const ActionPage(),
          'comedy':(context) => const ComedyPage(),
          'slice_of_life':(context) => const SliceOfLife(),
          'drama':(context) => const DramaPage(),
          'tradegy':(context) => const TradegyPage(),
          'psychological':(context) => const PsychologicalPage(),
          'historical':(context) => const HistoricalPage(),
          'mecha':(context) => MechaPage(),
          'military':(context) => MilitaryPage(),
          'supernatural':(context) => SupernaturalPage(),
          'magic':(context) => const MagicPage(),
          'romance':(context) => const RomancePage()
        },
      )
  );
}