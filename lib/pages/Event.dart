import 'package:flutter/material.dart';
import 'package:food_gallery/utils/routes.dart';

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: BackButton(color: Colors.black,onPressed: (){Navigator.pushNamed(context, MyRoutes.food);},) ,
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    
                  },
                ),
              ],
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              title: Text(
                "O'Neill's Cafe",
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    new Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: new ElevatedButton(
                            child: new Text(
                              "All",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, MyRoutes.all);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: new ElevatedButton(
                            child: new Text("Food",
                                style: TextStyle(color: Colors.white)),
                            onPressed: () {
                              Navigator.pushNamed(context, MyRoutes.food);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: new ElevatedButton(
                              child: new Text("Event",
                                  style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                Navigator.pushNamed(context, MyRoutes.event);
                              }),
                        )
                      ],
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25)),
                          padding: const EdgeInsets.all(6),
                          child: Image.asset("assets/images/event1.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset("assets/images/event2.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset("assets/images/event3.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset("assets/images/event4.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset("assets/images/event5.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset("assets/images/event6.jpg"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
