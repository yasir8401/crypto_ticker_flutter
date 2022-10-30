import 'package:bitcoin_ticker_flutter/screens/loading_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(BitcoinTickerApp());

class BitcoinTickerApp extends StatelessWidget {
  const BitcoinTickerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoadingScreen(),
    );
  }
}
