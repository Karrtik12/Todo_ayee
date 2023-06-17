import 'package:flutter/material.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  final Function onConfirm;
  final Function onCancel;

  const DeleteConfirmationDialog(
      {super.key, required this.onConfirm, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Confirm Deletion'),
      content: const Text('Are you sure you want to delete this item?'),
      actions: [
        TextButton(
          onPressed: onCancel as void Function()?,
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: onConfirm as void Function()?,
          style: TextButton.styleFrom(
            foregroundColor:
                Colors.lightBlueAccent, // Set the button text color to red
          ),
          child: const Text('Delete'),
        ),
      ],
    );
  }
}
