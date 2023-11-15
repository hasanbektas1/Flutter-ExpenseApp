import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

//11:10
class _NewExpenseState extends State<NewExpense> {
  // Controller
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text("Expense Name")),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration:
                const InputDecoration(label: Text("Amount"), prefixText: "₺"),
          ),
          IconButton(
              onPressed: () async {
                final DateTime? dateTime = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );
                if (dateTime != null) {
                  setState(() {
                    selectedDate = dateTime;
                    print("Tarih Seçildi: ${selectedDate}");
                  });
                }

                // DatePicker açmak..
                // DatePicker'dan gelen değeri Text olarak yazdırmak
              },
              icon: const Icon(Icons.calendar_month)),
          Text(
              "${selectedDate.year} / ${selectedDate.month} / ${selectedDate.day}"), // seçilen tarihi formatlayarak yazdırmak..
          ElevatedButton(
              onPressed: () {
                print("Kayıt Başarılı: ${selectedDate}");
              },
              child: const Text("Kaydet"))
        ],
      ),
    );
  }
}
