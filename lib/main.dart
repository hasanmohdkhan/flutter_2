import 'package:flutter/material.dart';
import 'package:quotes/Quote.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //list of quotes
  List<Quote> _quotes = [
    Quote(
        text: 'Life is what happens when you\'re busy making other plans.',
        author: 'Unknown'),
    Quote(
        text:
            'A friend is one that knows you as you are, understands where you have been, accepts what you have become, and still, gently allows you to grow.',
        author: 'Oscar'),
    Quote(
        text: 'You only live once, but if you do it right, once is enough.',
        author: 'DJ')
  ];

  Widget generateListItem(Quote quote) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(quote.text,
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[900])),
              SizedBox(height: 6.0),
              Text(quote.author,
                  style: TextStyle(fontSize: 15.0, color: Colors.brown, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _quotes
            .map((quote) => generateListItem(quote))
            .toList(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
