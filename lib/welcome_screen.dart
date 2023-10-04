import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  static const List<String> genres = [
    'action',
    'comedy',
    'a slice of life',
    'drama',
    'tradegy',
    'psychological',
    'historical',
    'mecha',
    'military',
    'supernatural',
    'magic',
    'romance',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8), // Border width
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(96.0), // Image radius
                    child: Image.asset('images/hoshi.png', fit: BoxFit.cover),
                  ),
                ),
              ),
              Text("Hi, I'm Hoshi,", style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: 'RobotoMono'
              ),),
              Text("your anime-bot :)", style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: 'RobotoMono'
              ),),
              SizedBox(height: 15.0,),
              Text("What genre do you like?", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'RobotoMono',
                  fontStyle: FontStyle.italic
              ),),
              SizedBox(height: 20.0,),
              Center(
                child: Container(
                  height: 200.0,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.white,
                    ),
                    itemCount: genres.length,
                    itemBuilder: (BuildContext context, int index){
                      return Container(
                        padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                        child: ListTile(
                          title: Text(genres[index], style: TextStyle(
                              color: Colors.white
                          ),),
                          trailing: Icon(Icons.chevron_right, color: Colors.white,),
                          onTap: (){
                            switch (index){
                              case 0: Navigator.pushNamed(context, 'action'); break;
                              case 1: {Navigator.pushNamed(context, 'comedy');}
                              break;
                              case 2: {Navigator.pushNamed(context, 'slice_of_life');}
                              break;
                              case 3: {Navigator.pushNamed(context, 'drama');}
                              break;
                              case 4: {Navigator.pushNamed(context, 'tradegy');}
                              break;
                              case 5: {Navigator.pushNamed(context, 'psychological');}
                              break;
                              case 6: {Navigator.pushNamed(context, 'historical');}
                              break;
                              case 7: {Navigator.pushNamed(context, 'mecha');}
                              break;
                              case 8: {Navigator.pushNamed(context, 'military');}
                              break;
                              case 9: {Navigator.pushNamed(context, 'supernatural');}
                              break;
                              case 10: {Navigator.pushNamed(context, 'magic');}
                              break;
                              case 11: {Navigator.pushNamed(context, 'romance');}
                              break;
                            }
                          },
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

