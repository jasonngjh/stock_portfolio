import 'package:stock_portfolio/models/ticker.dart';
import 'package:stock_portfolio/models/transaction.dart';

class Holding extends Ticker {
  double cost = 0.0;
  double marketValue;
  double shares = 0.0;
  double dividend;
  List<Transaction> transactions;

  Holding(String name, String symbol, String sector, this.transactions)
      : super(name, symbol, sector) {
    for (Transaction t in transactions) {
      this.shares += t.quantityOfshares;
      this.cost += (t.quantityOfshares * t.price);
    }
    this.marketValue = 0.0;
    this.dividend = 0.0;
  }
}
