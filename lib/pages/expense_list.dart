import 'package:expenseapp/models/expense.dart';
import 'package:expenseapp/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatefulWidget {
  const ExpenseList({super.key});

  @override
  State<ExpenseList> createState() => _ExpenseListState();
}

class _ExpenseListState extends State<ExpenseList> {
  // dummy data => Örnek veri
  final List<Expense> expenses = [
    Expense(
        name: "Yiyecek",
        price: 200,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        name: "Flutter Udemy Course",
        price: 100,
        date: DateTime.now(),
        category: Category.education),
    Expense(
        name: "Galata Kulesi",
        price: 150,
        date: DateTime.now(),
        category: Category.travel),
  ]; // firebase,veritabanı
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
            child: Text("Grafik"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: expenses.length,
              itemBuilder: (context, index) {
                return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    color: const Color.fromARGB(255, 87, 174, 246),
                    child: ExpenseItem(expenses[index]));
              },
            ),
          ),
        ],
      ),
    );
  }
}
