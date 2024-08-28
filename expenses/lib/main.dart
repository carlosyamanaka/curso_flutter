import 'package:flutter/material.dart';
import 'dart:math';
import './components/transaction_form.dart';
import './components/transaction_list.dart';
import 'package:expenses/components/chart.dart';
import 'models/transaction.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();

    return MaterialApp(
      home: MyHomePage(),
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: Colors.purple,
          secondary: Colors.amber,
        ),
        textTheme: tema.textTheme.copyWith(
          titleLarge: TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          labelLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // Corrigido para usar FontWeight.bold
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple,
          titleTextStyle: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't0',
      title: 'Antigo',
      value: 999.1,
      date: DateTime.now().subtract(Duration(days: 13)),
    ),
    Transaction(
      id: 't1',
      title: 'Tenis',
      value: 329.1,
      date: DateTime.now().subtract(Duration(days: 1)),
    ),
    Transaction(
      id: 't2',
      title: 'Luz',
      value: 211.3,
      date: DateTime.now().subtract(Duration(days: 2)),
    ),
    Transaction(
      id: 't3',
      title: 'Antigo',
      value: 999.1,
      date: DateTime.now().subtract(Duration(days: 13)),
    ),
    Transaction(
      id: 't4',
      title: 'Tenis',
      value: 329.1,
      date: DateTime.now().subtract(Duration(days: 1)),
    ),
    Transaction(
      id: 't5',
      title: 'Luz',
      value: 211.3,
      date: DateTime.now().subtract(Duration(days: 2)),
    ),
  ];

  List<Transaction> get _recentTransaction {
    return _transactions.where((tr) {
      return tr.date.isAfter(DateTime.now().subtract(
        Duration(days: 7),
      ));
    }).toList();
  }

  _addTransaction(String title, double value, DateTime date) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: date,
    );

    setState(() {
      _transactions.add(newTransaction);
    });

    Navigator.of(context).pop();
  }

  _removeTransaction(String id) {
    setState(() {
      _transactions.removeWhere((tr) {
        return tr.id == id;
      });
    });
  }

  _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return TransactionForm(_addTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text(
        'Despesas Pessoais',
        // textScaler: TextScaler.linear(1.2),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => _openTransactionFormModal(context),
        ),
      ],
    );
    final availabelHeight = MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: availabelHeight * 0.25,
              child: Chart(_recentTransaction),
            ),
            Container(
              height: availabelHeight * 0.75,
              child: TransactionList(_transactions, _removeTransaction),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _openTransactionFormModal(context),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
