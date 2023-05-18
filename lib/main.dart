import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/dal/shoe_data.dart';
import 'model/shoe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Flutter Bootcamp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Shoe> shoeList = ShoeData.getALlShoes();

  @override
  Widget build(BuildContext context) {
    final orient = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Running shoes"),
        backgroundColor: Colors.teal
      ),

      body: orient == Orientation.portrait ?
      ListView.builder(
        itemCount: shoeList.length,
        itemBuilder: (context, index){
          Shoe s = shoeList[index];
          return ListTile(
            onTap: () => _popupDialog(context, s),
            leading: Image.asset(s.imagePath),
            title: Text(
              s.name,
              style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20),),
            subtitle: Text(s.description),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.teal,),
          );
        },
      ) :

      ListView.builder(
        itemCount: shoeList.length,
        itemBuilder: (context, index){
          Shoe s = shoeList[index];
          return ListTile(
            onTap: (){
              setState(() {
                shoeList.removeAt(index);
              });
            },
            leading: Image.asset(s.imagePath),
            title: Text(
              s.name,
              style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 22),

            ),
            subtitle: Text(s.description),
            trailing: const Icon(Icons.delete_forever, color: Colors.teal,),
          );
        },
      )
    );
  }
}

void _popupDialog(BuildContext context, Shoe shoe) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Product preview', style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold, fontSize: 15)),
          content: Text(shoe.name, style: const TextStyle(color: Colors.black38, fontWeight: FontWeight.bold, fontSize: 20),),
          actions: <Widget>[
            Image.asset(shoe.imagePath),
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Container(
                  color: Colors.teal,
                   padding: const EdgeInsets.all(8),
                  child: const Text("OK", style: TextStyle(color: Colors.white)),
                ),
            )
          ],
        );
      });
}


