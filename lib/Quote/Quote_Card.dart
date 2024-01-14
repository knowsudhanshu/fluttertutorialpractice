
import 'package:flutter/material.dart';
import 'package:ninja_id/Quote/Quote.dart';

class QuoteCard extends StatelessWidget {
  Quote quote;
  Function delete;
  QuoteCard( {required this.quote, required this.delete } );

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),
            ),
            const SizedBox(height: 8.0),
            TextButton(
                onPressed: () {
                  delete();
                },
                child: const Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}