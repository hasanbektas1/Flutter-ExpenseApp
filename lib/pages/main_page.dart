import 'package:expenseapp/data/expenses.dart';
import 'package:expenseapp/models/expense.dart';
import 'package:expenseapp/pages/expense_list.dart';
import 'package:expenseapp/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void addNewExpenseList(Expense newAddlistExpense) {
    setState(() {
      // listeye yeni veri eklemek
      expenses.add(newAddlistExpense);
    });
  }

  void removeExpense(Expense expense) {
    setState(() {
      // Listeden veri silmek
      expenses.remove(expense);
    });
  }

  void undoRemoveExpense(int index, Expense expense) {
    setState(() {
      // Listeden silinen veriyi geri eklemek
      expenses.insert(index, expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense App"),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (ctx) => NewExpense(
                          addExpenseList: addNewExpenseList,
                        ));
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: ExpenseList(removeExpense, undoRemoveExpense),
    );
  }
}
