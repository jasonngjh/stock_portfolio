class Transaction {
  String date;
  String type;
  double totalValue;
  double price;
  double quantityOfshares;
  double commission;

  Transaction(this.date, this.type, this.price, this.quantityOfshares,
      this.commission) {
    this.totalValue = (price * quantityOfshares) + commission;
  }
}
