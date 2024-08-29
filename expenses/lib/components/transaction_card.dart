  import 'package:expenses/models/transaction.dart';
  import 'package:flutter/material.dart';
  import 'package:intl/intl.dart';

  class transaction_card extends StatelessWidget {
    final Transaction tr;
    final void Function(String p1) onRemove;

    
    const transaction_card({
      super.key,
      required this.tr,
      required this.onRemove,
    });


    @override
    Widget build(BuildContext context) {
      return Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 5.0,
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: FittedBox(
                child: Text('R\$${tr.value}'),
              ),
            ),
          ),
          title: Text(
            tr.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          subtitle: Text(
            DateFormat('d MMM y').format(tr.date),
          ),
          trailing: MediaQuery.of(context).size.width > 400
              ? TextButton(
                  onPressed: () => onRemove(tr.id),
                  child: Container(
                    width: 120,
                    child: Row(
                      children: [
                        Icon(Icons.delete),
                        Text('Excluir'),
                      ],
                    ),
                  ),
                )
              : IconButton(
                  onPressed: () => onRemove(tr.id),
                  icon: Icon(Icons.delete),
                  color: Theme.of(context).colorScheme.error,
                ),
        ),
      );
    }
  }
