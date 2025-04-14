import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<StatefulWidget> createState(){
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense>{
  // var enteredTitle = '';
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  
  // void saveTitleInput(String inputValue) {
  //   enteredTitle = inputValue;
  // }

  @override
  void dispose(){
    titleController.dispose();
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            // onChanged: saveTitleInput,
            controller: titleController,
            maxLength: 50,
            decoration: InputDecoration(
              label: Text(
                'title'
              )
            ),
          ),
          TextField(
            controller: amountController,
            maxLength: 10,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixText: '\$ ',
              label: Text(
                'amount',
              )
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel'
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('${titleController.text}, ${amountController.text}');
                }, 
                child: Text(
                  'Save Expense'
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}