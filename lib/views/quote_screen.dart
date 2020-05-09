import 'package:daily_quote/components/widget_builder.dart';
import 'package:daily_quote/model/quote_list.dart';
import 'package:flutter/material.dart';
import 'package:daily_quote/views/add_quote_screen.dart';

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: Icon(
          Icons.favorite,
          size: 40.0,
        ),
        title: Text('Awesome Quote!'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView(
        children: quotes
            .map((quote) => CardTemplate(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) => AddQuote()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}
