import 'package:flutter/material.dart';
import 'package:month4miniproject/FriendsList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   FriendsList values = FriendsList();

  @override
  Widget build(BuildContext context) {
    print(values.friends.length);

    return Scaffold(
      body: Container(
            padding: EdgeInsets.all(30),
              child:  ListView.builder(
                itemCount: values.friends.length,
                itemBuilder: (BuildContext context, int index) {
                  String key = values.friends.keys.elementAt(index);
                  return Column(
                    children: <Widget>[
                      Container(
                      child:
                      ListTile(
                        title: new Text("$key"),
                        subtitle: new Text("${values.friends[key]}"),
                      ),


                      ),
                  const Divider(
                  height: 2.0,
                  ),
                    ],
                  );
                },
              ),
            ),



      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
