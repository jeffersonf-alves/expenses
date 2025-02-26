import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
      return  Card(
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
                          backgroundColor: Colors.purple, // Define a cor de fundo
                          onPressed: () {
                            print(titleController.text);
                            print(valueController.text);
                          },
                          child: Text(
                            'Nova transação',
                            style: TextStyle(color: Colors.white), // Define a cor do texto
                          ),
                        )
                      ],
                    )
                  ],
                ),
                )
              );
  }
}