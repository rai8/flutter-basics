import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: QuoteList(),
      ),
    );

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  //defining our variables
  List<String> quotes = [
    'Be yoursel , everyone else is already taken',
    'I have nothing to declare exccept my genuis',
    'The truth is rarely pure and never simple'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        child: Column(
          /* children: quotes.map((quote) {
            return Text(quote);
          }).toList(), */
          children: quotes.map((quote) => Text(quote)).toList(),
        ),
      ),
    );
  }
}
