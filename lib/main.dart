import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'components/transaction_user.dart';

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
              TransactionList(_transactions),
              TransactionForm(),
            
          ],
        )
      );
    }
}