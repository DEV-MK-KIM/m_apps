import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = titleController.text;
    final enterdAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enterdAmount <= 0) {
      return;
    }

    addTx(enteredTitle, enterdAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),

              // onChanged: (val) {
              //   amountInput = val;
              // },
            ),
            FlatButton(
              child: Text("Add Transaction"),
              textColor: Colors.deepPurple,
              onPressed: submitData,
            ),
          ],
        ),
      ),
    );
  }
}
