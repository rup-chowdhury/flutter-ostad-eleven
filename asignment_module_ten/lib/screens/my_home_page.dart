import 'package:flutter/material.dart';

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
                  onPressed: (){
                    final snackBar = SnackBar(
                      content: const Text("Button Pressed!"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text('Press Me'),
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