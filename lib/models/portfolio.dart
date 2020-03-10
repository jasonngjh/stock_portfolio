import 'package:stock_portfolio/models/holding.dart';
import 'package:stock_portfolio/models/transaction.dart';

class Portfolio {
  final int id;
  String name;
  double costValue = 0.0;
  double marketValue;
  final List<Holding> holdings;

  Portfolio(this.id, this.name, this.holdings) {
    for (Holding h in holdings) {
      costValue += h.cost;
    }
  }

  String getName() {
    return name;
  }

  setName(String name) {
    this.name = name;
  }

  static List<Portfolio> fetchAll() {
    return [
      Portfolio(1, 'Main Portfolio', [
        Holding('DBS Group Holding', 'D05:SGX', 'Bank', [
          Transaction('09 March 2020', 'BUY', 23.00, 500, 0.0),
          Transaction('10 March 2020', 'BUY', 23.00, 600, 0.0)
        ]),
        Holding('UOB', 'U11:SGX', 'Bank', [
          Transaction('09 March 2020', 'BUY', 21.90, 700, 0.0),
          Transaction('10 March 2020', 'BUY', 22.00, 700, 0.0)
        ]),
        Holding('CapitaMall Trust', 'C38U:SGX', 'Reit', [
          Transaction('09 March 2020', 'BUY', 2.90, 800, 0.0),
          Transaction('10 March 2020', 'BUY', 2.41, 1000, 0.0)
        ])
      ]),
    ];
  }
}
