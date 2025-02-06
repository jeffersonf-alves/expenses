import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';


void main(List<String> args) {
    runApp(ExpensesApp());
}

// StatelessWidget

// O StatelessWidget no Flutter é um tipo de widget que não armazena estado interno e não muda ao 
// longo do tempo. Ele é ideal para criar interfaces que não precisam ser 
// atualizadas dinamicamente após a construção inicial.


// MaterialApp 

// O MaterialApp no Flutter é um widget de alto nível que configura e gerencia a estrutura básica 
// de um aplicativo que segue as diretrizes de Material Design. Ele fornece funcionalidades 
// essenciais para a navegação e o tema do app.



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
              Column(
                children: _transactions.map((tr) {
                  return Card(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.purple,
                                width: 2,

                              )
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(
                              tr.value.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple,

                              )
                            ),
                          ),
                          Column(
                            children: [
                              Text(tr.title),
                              Text(tr.date.toString())
                            ],
                          )
                        ],
                      ),
                  );
                }).toList(),
              )
          ],
        )
      );
    }
}