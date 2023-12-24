import 'package:flutter/material.dart';

import '../../../controller/deletenote.dart';
import '../../../controller/readnote.dart';
import '../../NoteScreen/noteScreen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: read(),
      builder:(context, snapshot) {
        if(!snapshot.hasData) {
          return const CircularProgressIndicator();
        } else {
          return GridView.builder(
            itemCount: snapshot.data!.length,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NoteScreen(snap: snapshot.data![index],),));
                },
                onLongPress: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Delete Note'),
                      content: const Text('Do you want to delete this note?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            delete(snapshot.data![index].id);
                            Navigator.pop(context);
                            setState(() {});
                          },
                          child: const Text('Delete'),
                        ),
                      ],
                    ),
                  );
                },
                child: Container(
                  width: width * 0.45,
                  height: height * 0.2,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Color(0x459e9e9e),
                      boxShadow: [
                        BoxShadow(color: Colors.black54,
                            blurRadius: 5,
                            offset: Offset(0, 4),
                            spreadRadius: 2)
                      ]
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/notes.png',
                        width: width * 0.35,
                        height: height * 0.15,
                      ),
                      SizedBox(height: height * 0.02,),
                      Text(snapshot.data![index].title,maxLines: 1, style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}