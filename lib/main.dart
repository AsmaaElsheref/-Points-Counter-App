import 'package:flutter/material.dart';

void main(){
  runApp(BasketApp());
}

class BasketApp extends StatefulWidget {
  @override
  State<BasketApp> createState() => _BasketAppState();
}

class _BasketAppState extends State<BasketApp> {
int TeamApoints=0;

int TeamBPoints=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            backgroundColor:Colors.pinkAccent ,
              title:Text("PointsCounter")),
          body:SafeArea(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 400,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Team A',
                      style:TextStyle(
                          fontSize:25 ,
                          color:Colors.black , )),
                      Text('$TeamApoints',
                          style:TextStyle(
                            fontSize:100 ,
                            color:Colors.black , )),

                      ElevatedButton(
                      onPressed: (){
                        setState(() {
                          TeamApoints++;
                        });
                      }, child: Text('Add 1 Point'),
                      style:ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent,
                        minimumSize:Size(150,60),
                      )),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: (){
                              setState(() {
                                TeamApoints+=2;
                              });
                            }, child: Text('Add 2 Point'),
                          style:ElevatedButton.styleFrom(
                            primary: Colors.pinkAccent,
                            minimumSize:Size(150,60),
                          )),
                      ),

                      ElevatedButton(onPressed: (){
                        setState(() {
                          TeamApoints+=3;
                        });
                      }, child: Text('Add 3 Point'),
                        style:ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent,
                          minimumSize:Size(150,60),
                        )),


                    ],

                  ),
                ),
                Container(
                  height:500,
                  child: VerticalDivider(
                    color: Colors.black26,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 400,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          'Team B' ,
                          style:TextStyle(
                            fontSize:25 ,
                            color:Colors.black , )),

                      Text('$TeamBPoints',
                          style:TextStyle(
                        fontSize:100 ,
                        color:Colors.black , )),

                      ElevatedButton(
                          onPressed: (){
                            setState(() {
                              TeamBPoints++;
                            });
                          }, child: Text('Add 1 Point'),
                        style:ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent,
                          minimumSize:Size(150,60),)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              TeamBPoints+=2;
                            });
                          }, child: Text('Add 2 Point'),
                          style:ElevatedButton.styleFrom(
                            primary: Colors.pinkAccent,
                            minimumSize:Size(150,60),
                        ),
                      )),
                      ElevatedButton(
                          onPressed: (){
                            setState(() {
                              TeamBPoints+=3;
                            });
                          }, child: Text('Add 3 Point'),
                        style:ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent,
                          minimumSize:Size(150,60),))
                    ],
                  ),
                )
            ],
          ),

               ElevatedButton(
                   onPressed: (){
                     setState(() {
                       TeamApoints=0;
                       TeamBPoints=0;
                     });
                   }, child: Text('Reset'),
                 style:ElevatedButton.styleFrom(
                   primary: Colors.pinkAccent,
                   minimumSize:Size(100,40),))
            ],
          ),

          )
      ));

  }
}
