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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.black, child: Text('Greeting App')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('Hello World!', style: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),),
                SizedBox(height: 24,),
                Text('Welcome to Flutter!', style: TextStyle(fontSize: 24),),
                SizedBox(height: 24,),
                Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flutter_logo.svg/1024px-Flutter_logo.svg.png',
                width: 260,),
                SizedBox(height: 24,),
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Press Me')),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
