import 'dart:convert' show jsonDecode;


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Example_Get_two  extends StatefulWidget {
  const Example_Get_two ({super.key});

  @override
  State<Example_Get_two> createState() => _Example_GetoneState();
}

class _Example_GetoneState extends State<Example_Get_two> {

  List<Photos> PhotosList = [];

  Future<List<Photos>> getPhotos ()async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    var data = jsonDecode(response.body.toString());
    if( response.statusCode == 200){
      for(Map i in data){
          Photos image = Photos(title: i['title'], url: i['url']);
          PhotosList.add(image);
      }
      return PhotosList;
    }
    else{
      return PhotosList;
    }
  }
  @override
  Widget build(BuildContext context) {




    return Scaffold(
        appBar: AppBar(
          title: const Text("Get Example two "),

        ),
        body:  Column(
          children: [
            Expanded(child: FutureBuilder(future: getPhotos(),
                builder: (context, snapshot){
                  if( ! snapshot.hasData){
                    return Text(" loading");
                  }
                  else {
                    return ListView.builder(
                        itemCount: PhotosList.length,
                        itemBuilder: (context , index){
                          return Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                CircleAvatar(
                                  backgroundImage: NetworkImage((PhotosList[index].url.toString()),),
                                )
                                ,
                                Text(PhotosList[index].title.toString()),

                              ],
                            ),
                          );
                        }


                    );
                  }
                }
            )
            )
          ],
        )
    );
  }
}
class Photos{
  String title, url ;
  Photos(


      {
        required this.title, required this.url

      }


      );
}
