import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';


void main(List<String> args) {
    runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: MyHomePage(),
      );
    }
}


class MyHomePage extends StatelessWidget {

    final _transactions = [
      Transaction(
          id: 't1', 
          title: 'Novo Tênis de corrida', 
          value: 310.76, 
          date: DateTime.now()
      ),
      Transaction(
          id: 't2', 
          title: 'Conta de Luz', 
          value: 210.76, 
          date: DateTime.now()
      )
    ];


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Despesas Pessoais'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              Container(
                width: double.infinity,              
                child: Card(
                    color: Colors.blue,
                     elevation: 5,
                    child: Text('Gráfico')
                )
              ),
              Card(
                child: Text('Lisra de Transações'),
              )
          ],
        )
      );
    }
}