import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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


// Scaffold

// No Flutter, o Scaffold é um widget fundamental que fornece uma estrutura básica para o layout 
// de um aplicativo. Ele serve como um "esqueleto" para construir a interface da aplicação, 
// fornecendo elementos essenciais, como AppBar, Body, FloatingActionButton, BottomNavigationBar, SnackBar


class ExpensesApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: MyHomePage(),
      );
    }
}


class MyHomePage extends StatelessWidget {

    final titleController = TextEditingController();
    final valueController = TextEditingController();


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
                              'R\$ ${tr.value.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple,

                              )
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tr.title,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,

                                  )  
                                ),
                              Text(
                                DateFormat('d MMM y').format(tr.date),
                                style: TextStyle(
                                  color: Colors.grey[600]
                                ),
                                )
                            ],
                          )
                        ],
                      ),
                  );
                }).toList(),
              ),
              Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Título'
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Valor (R\$)'
                       ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                            child: Text('Nova transação'),
                            textColor: Colors.purple,
                            onPressed: () {
                              print(titleController.text);
                              print(valueController.text);
                            },
                        )
                      ],
                    )
                  ],
                ),
                )
              
              )
          ],
        )
      );
    }
}