import 'package:bitcoin_ticker_flutter/data/config.dart';
import 'package:bitcoin_ticker_flutter/services/networking_helper.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR',
  'PKR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future<String> getExchangeRate(
      String? sourceCurrency, String? destinationCurrency) async {
    String apiURL =
        '$coinApiBaseURL$sourceCurrency/$destinationCurrency?apikey=$apiKey';

    NetworkHelper helper = await NetworkHelper(apiURL);

    var coinData = await helper.getData();
    print(coinData);
    return (coinData['rate']).toStringAsFixed(2);
  }
}
