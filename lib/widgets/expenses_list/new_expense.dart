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
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  
  // void saveTitleInput(String inputValue) {
  //   enteredTitle = inputValue;
  // }

  @override
  void dispose(){
    _titleController.dispose();
    _amountController.dispose();
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
            controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(
              label: Text(
                'title'
              )
            ),
          ),
          TextField(
            controller: _amountController,
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
                  print('${_titleController.text}, ${_amountController.text}');
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