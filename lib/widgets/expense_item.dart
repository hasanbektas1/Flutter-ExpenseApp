import 'package:expenseapp/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {Key? key}) : super(key: key);
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(
              expense.name,
              style: GoogleFonts.allan(fontSize: 25),
            ),
            Row(
              children: [
                Text("${expense.price.toStringAsFixed(2)} ₺"),
                const Spacer(),
                Icon(categoryIcons[expense.category]),
                const SizedBox(width: 8),
                Text(expense.formattedDate)
              ],
            )
          ],
        ),
      ),
    );
  }
}
