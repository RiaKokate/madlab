
import 'package:flutter/material.dart';

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
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Button Exp 3 vinit'),
      ),
      body:


      Column(
        children: [
          Row(
            children: [
              SizedBox(width: 120,height: 100,),
              ElevatedButton(
                  onPressed:() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('You clicked on the Home Button')));
                  },
                  child: Text('Home')
              ),
              SizedBox( width:20,height: 50,),
              ElevatedButton.icon(
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (ctx)=> AlertDialog(
                            title: const Text('You clicked on the Home Button')
                        ));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  icon: Icon(
                      Icons.home
                  ),
                  label: Text('Home')),
              SizedBox(
                width: 50,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 120,height: 100,),
              TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    backgroundColor: Colors.pink,
                  ),
                  onPressed:() {
                    showDialog(
                        context: context,
                        builder: (ctx)=> AlertDialog(
                            title: const Text('You clicked on the Mail Button')
                        ));
                  },
                  child: Text('Mail')
              ),
              SizedBox( width:20),
              TextButton.icon(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    backgroundColor: Colors.pink,
                  ),
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (ctx)=> AlertDialog(
                            title: const Text('You clicked on the Mail Button')
                        ));
                  },
                  icon: Icon(
                      Icons.contact_mail
                  ),
                  label: Text('Mail'))
            ],
          ),
          Row(
            children: [
              SizedBox(width: 100,height: 100,),
              OutlinedButton(

                  onPressed:() {
                    showDialog(
                        context: context,
                        builder: (ctx)=> AlertDialog(
                            title: const Text('You clicked on the balance Button')
                        ));
                  },
                  child: Text('Balance')
              ),
              SizedBox( width:20),
              OutlinedButton.icon(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    backgroundColor: Colors.brown,
                  ),
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (ctx)=> AlertDialog(
                            title: const Text('You clicked on the Balance Button')
                        ));
                  },
                  icon: Icon(
                      Icons.balance
                  ),
                  label: Text('Balance'))
            ],
          ),
        ],
      )
      , // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
