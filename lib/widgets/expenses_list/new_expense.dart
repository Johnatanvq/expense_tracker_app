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
  final titleController = TextEditingController();
  
  void saveTitleInput(String inputValue) {
    enteredTitle = inputValue;
  }

  @override
  void dispose(){
    titleController.dispose();
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
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(titleController.text);
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