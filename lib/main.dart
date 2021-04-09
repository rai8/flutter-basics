import 'package:flutter/material.dart';
import 'quote.dart';

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
  List<Quote> quotes = [
   Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Krayl Michigan', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Stanley Bailey', text: 'The truth is rarely pure and never simple'),
      
   
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
          children: quotes.map((quote) => Text('${quote.text}- ${quote.author}')).toList(),
        ),
      ),
    );
  }
}
