import 'package:daily_quote/model/quote_model.dart';
import 'package:flutter/material.dart';

//Quote card widget builder
class CardTemplate extends StatelessWidget {
  final Quote quote;
  final Function delete;
  CardTemplate({ this.quote, this.delete });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onLongPress: ()async{
       String response = await showDialog<String>(
         barrierDismissible: false,
         context: context,
         builder: (BuildContext context){
           return AlertDialog(
             title: Text('Delete Quote', style: TextStyle(color: Colors.pink),),
             content: Text('Are you sure you want to Delete?'),
             actions: [
               FlatButton(
                 textColor: Colors.pink[400],
                 child: Text('Yes'),
                 onPressed: () {
                   Navigator.pop(context, 'Yes');
                 }
                 ),
               FlatButton(
                   textColor: Colors.pink[700],
                   child: Text('No'),
                   onPressed: () => Navigator.pop(context, 'No')),
             ],
           );
         }
       );
       //do something with the response
        print(response);
        if(response == 'Yes'){
          delete();
        }
      },
      child: Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        elevation: 10.0,
        shadowColor: Colors.pinkAccent[100],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 6.0,),
              Text(
                quote.author,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[900],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


