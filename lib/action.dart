import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ActionPage extends StatefulWidget {
  const ActionPage({Key? key}) : super(key: key);

  @override
  State<ActionPage> createState() => _ActionPageState();
}

class _ActionPageState extends State<ActionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<Anime>>(
        stream: readAnime(),
        builder: (context, snapshot){
          final animes = snapshot.data!;

          return ListView(
            children: [
              animes.map(buildAnime).toList()
            ],
          )
        },
      ),
    );
  }

  Widget BuildAnime(Anime anime) => ListTile(
    leading: CircleAvatar(child: Text('${anime.index}'),),
    title: Text(anime.name),
    subtitle: Text(anime.location_img
    ),
  );

  Stream<List<Anime>> readAnime() => FirebaseFirestore.instance.collection('action').snapshots().map((snapshot) =>
      snapshot.docs.map((doc) => Anime.fromJson(doc.data())).toList());

}
class Anime {
  final int index;
  final String name;
  final String location_img;

  Anime({
    required this.index,
    required this.name,
    required this.location_img,
  });

  Map<String, dynamic> toJson() => {
    'index': index,
    'name': name,
    'location_img': location_img
  };

  static Anime fromJson(Map<String, dynamic> json) => Anime(
    index: json['index'],
    name: json['name'],
    location_img: json['location_img'],
  );
}

