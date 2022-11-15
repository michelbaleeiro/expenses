import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

// ignore: use_key_in_widget_constructors
class TransactionList extends StatelessWidget {
  // const TransactionList({ Key? key }) : super(key: key);

  final List<Transaction> transactions;

  // ignore: use_key_in_widget_constructors
  const TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
return Container(
height: 300,
child: transactions.isEmpty
? Column(
children: [
const SizedBox(height: 20),
Text(
'Nenhum Transação Cadastrada!',
style: Theme.of(context).textTheme.headline6,
),
const SizedBox(height: 20),
SizedBox(
height: 200,
child: Image.asset(
'assets/images/waiting.png',
fit: BoxFit.cover,
),
),
],
)
: ListView.builder(
itemCount: transactions.length,
itemBuilder: (ctx, index) {
final tr = transactions[index];
return Card(
child: Row(
children: [
Container(
margin: const EdgeInsets.symmetric(
horizontal: 15, vertical: 10),
decoration: BoxDecoration(
border: Border.all(
color: Theme.of(context).primaryColor,
width: 2,
),
),
padding: const EdgeInsets.all(10),
child: Text(
'R\$ ${tr.value.toStringAsFixed(2)}',
style: const TextStyle(
fontWeight: FontWeight.bold,
fontSize: 20,
color: Colors.purple,
),
),
),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
Text(
tr.title,
style: Theme.of(context).textTheme.headline6,
),
Text(
DateFormat('d MMM y').format(tr.date),
style: const TextStyle(color: Colors.blueGrey),
),
],
)
],
),
);
},
),
);
}
}
