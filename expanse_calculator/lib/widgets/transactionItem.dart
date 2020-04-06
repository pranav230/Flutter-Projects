import '../models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key key,
    @required Transaction transaction,
    @required Function deleteTransaction,
  }) : _transaction = transaction, _deleteTransaction = deleteTransaction, super(key: key);

  final Transaction _transaction;
  final Function _deleteTransaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
            padding: EdgeInsets.all(6),
            child: FittedBox(
              child: Text(
                  '\$ ${_transaction.amount.toStringAsFixed(2)}'),
            ),
          ),
        ),
        title: Text(
          _transaction.title,
          style: Theme.of(context).textTheme.title,
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(_transaction.date),
        ),
        trailing: MediaQuery.of(context).size.width > 720
            ? FlatButton.icon(
                icon: Icon(Icons.delete),
                onPressed: () =>
                    _deleteTransaction(_transaction.id),
                textColor: Theme.of(context).errorColor,
                label: Text('Delete'),
              )
            : IconButton(
                icon: Icon(Icons.delete),
                onPressed: () =>
                    _deleteTransaction(_transaction.id),
                color: Theme.of(context).errorColor,
              ),
      ),
    );
  }
}