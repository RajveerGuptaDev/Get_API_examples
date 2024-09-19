//import 'dart:convert';


//import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

//class Example_Getone  extends StatefulWidget {
  //const Example_Getone ({super.key});

  //@override
  //State<Example_Getone> createState() => _Example_GetoneState();
//}

//class _Example_GetoneState extends State<Example_Getone> {

 // List<PostsModel> PostList=[];

  //Future<List<PostsModel>> getPostApi ()async{
    //final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    //var data = jsonDecode(response.body.toString());
    //if( response.statusCode == 200){
      //for(Map i in data){
        //PostList.add(PostsModel.fromJson(i));
      //}
      //return PostList;
    //}
   //else{
     //return PostList;
    //}
  //}
  //@override
  //Widget build(BuildContext context) {




    //return Scaffold(
      //appBar: AppBar(
        //title: const Text("Get Example one"),

      //),
     // body:  Column(
       // children: [
         // Expanded(child: FutureBuilder(future: getPostApi(),
           //   builder: (context, snapshot){
             //if( ! snapshot.hasData){
               //return Text(" loading");
             //}
             //else {
               //return ListView.builder(
                 //itemCount: PostList.length,
                   //itemBuilder: (context , index){
                     //return Card(
                       //child: Column(
                         //children: [
                           //Text(PostList[index].body.toString()),
                           //Text(PostList[index].title.toString()),

                        // ],
                       //),
                     //);
                   //}


               //);
             //}
              //}
//          )
   //       )
     //   ],
      //)
    //);
  //}
//}
