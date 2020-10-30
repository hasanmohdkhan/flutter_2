import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;

  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Colors.black,
        elevation: 8.0,
        child: InkWell(
          splashColor: Colors.limeAccent,
          onTap: () {
            print('tapped');
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(quote.text,
                    style: TextStyle(fontSize: 20.0, color: Colors.grey[900])),
                SizedBox(height: 6.0),
                Text(quote.author,
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
