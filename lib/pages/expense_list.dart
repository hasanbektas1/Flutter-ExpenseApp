import 'package:expenseapp/data/expenses.dart';
import 'package:expenseapp/models/expense.dart';
import 'package:expenseapp/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatefulWidget {
  const ExpenseList(this.onRemove, this.undoRemove, {Key? key})
      : super(key: key);

  final void Function(Expense expense) onRemove;
  final void Function(int index, Expense expense) undoRemove;

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
                  child: Dismissible(
                    key: ValueKey(expenses[index]),
                    child: ExpenseItem(expenses[index]),
                    onDismissed: (direction) {
                      var removeExpense = expenses[index];
                      var removeExpenseIndex = index;

                      widget.onRemove(expenses[index]);
                      var snackBar = SnackBar(
                        action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              widget.undoRemove(
                                  removeExpenseIndex, removeExpense);
                            }),
                        content: Text("Deleted: ${removeExpense.name}"),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
