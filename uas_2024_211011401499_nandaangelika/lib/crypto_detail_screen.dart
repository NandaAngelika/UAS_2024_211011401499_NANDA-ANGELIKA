import 'package:flutter/material.dart';
import 'crypto_model.dart';

class CryptoDetailScreen extends StatelessWidget {
  final Crypto crypto;

  CryptoDetailScreen({required this.crypto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${crypto.name} Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              crypto.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Symbol: ${crypto.symbol}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Price: \$${crypto.price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18),
            ),
            // Tambahkan informasi lainnya yang diinginkan di sini
          ],
        ),
      ),
    );
  }
}
