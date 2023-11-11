import 'package:expenseapp/models/expense.dart';
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
    Expense(
        name: "Yiyecek",
        price: 200,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        name: "Flutter Udemy Course",
        price: 200,
        date: DateTime.now(),
        category: Category.education),
    Expense(
        name: "Galata Kulesi",
        price: 200,
        date: DateTime.now(),
        category: Category.travel),
    Expense(
        name: "Yiyecek",
        price: 200,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        name: "Flutter Udemy Course",
        price: 200,
        date: DateTime.now(),
        category: Category.education),
    Expense(
        name: "Galata Kulesi",
        price: 200,
        date: DateTime.now(),
        category: Category.travel),
  ]; // firebase,veritabanı
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 221, 244),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 78, 128),
        title: const Text("Expense App"),
      ),
      body: Center(
        child: Column(
          children: [
            const Center(
              child: SizedBox(
                height: 300,
                child: Align(
                  child: Text(
                    "Grafik",
                  ),
                ),
              ),
            ),
            const Text(
              "Detail",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                      child: ListTile(
                        title: Text(
                          expenses[index].name,
                          style: const TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(
                          expenses[index].price.toString(),
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FloatActionButton clicked");
        },
        child: Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 17, 78, 128),
        foregroundColor: const Color.fromARGB(255, 192, 221, 244),
      ),
    );
  }
}
// Topbar eklemek vs..