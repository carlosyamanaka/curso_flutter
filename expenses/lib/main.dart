import 'package:flutter/material.dart';
import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';

void main(List<String> args) {
  runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _transactions = [
    Transaction(
        id: 't1',
        title: 'Novo tênis de corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 214.6,
      date: DateTime.now(),
    )
  ];

  _addTransaction(String title, double valor) {
    final new_transaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: valor,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(new_transaction);
    });

    //Passar uma informação por muitas camadas da árvore
    Navigator.of(context).pop();
  }

  _open_transaction_form_modal(BuildContext Context) {
    showModalBottomSheet(
        context: Context,
        builder: (ctx) {
          return TransactionForm(_addTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas pessoais'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _open_transaction_form_modal(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Text('Gráfico'),
              color: Colors.blue,
              elevation: 5,
            ),
            TransactionList(_transactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _open_transaction_form_modal(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
