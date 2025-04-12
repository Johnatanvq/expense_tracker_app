import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<StatefulWidget> createState(){
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense>{
  var enteredTitle = '';
  
  void saveTitleInput(String inputValue) {
    enteredTitle = inputValue;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: saveTitleInput,
            maxLength: 50,
            decoration: InputDecoration(
              label: Text(
                'title'
              )
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(enteredTitle);
                }, 
                child: Text(
                  'Save Expense'
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}