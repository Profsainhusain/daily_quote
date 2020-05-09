import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:daily_quote/model/quote_model.dart';

class AddQuote extends StatefulWidget {
  final Quote quote = Quote();
  @override
  _AddQuoteState createState() => _AddQuoteState();
}

class _AddQuoteState extends State<AddQuote> {
  String newQuote;
  String newAuthor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.favorite),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 48.0, 18.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                onChanged: (quoteText){
                  newQuote = quoteText;
                },
                autofocus: true,
                style: TextStyle(
                  fontSize: 18.0,
                ),
                textCapitalization: TextCapitalization.sentences,
                enableSuggestions: true,
                decoration: InputDecoration(
                  labelText: 'Quote:',
                  labelStyle: TextStyle(fontSize: 20.0),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              TextField(
                onChanged: (authorName){
                  newAuthor = authorName;
                },
                autofocus: true,
                style: TextStyle(
                  fontSize: 18.0,
                ),
                textCapitalization: TextCapitalization.sentences,
                enableSuggestions: true,
                decoration: InputDecoration(
                  labelText: 'Author:',
                  labelStyle: TextStyle(fontSize: 20.0),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              FlatButton(
                onPressed: () {
                  print('$newQuote by $newAuthor');
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                color: Colors.pink,
              ),
              Expanded(
                child: Icon(
                  Icons.border_color,
                  size: 100.0,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
