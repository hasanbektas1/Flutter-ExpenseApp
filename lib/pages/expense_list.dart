import 'package:expenseapp/data/expenses.dart';
import 'package:expenseapp/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatefulWidget {
  const ExpenseList({Key? key}) : super(key: key);

  @override
  _ExpenseListState createState() => _ExpenseListState();
}

class _ExpenseListState extends State<ExpenseList> {
  // Her 4 liste elemanına farklı renk atandı
  final _colors = [
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.yellow,
  ];

  // BLoC Pattern
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 250,
            child: Text("Grafik"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: expenses.length,
              itemBuilder: (context, index) {
                return Card(
                    elevation: 15,
                    color: _colors[index % _colors.length],
                    child: ExpenseItem(expenses[index]));
              },
            ),
          ),
        ],
      ),
    );
  }
}
