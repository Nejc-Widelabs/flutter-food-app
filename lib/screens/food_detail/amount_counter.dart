import 'package:flutter/material.dart';

class AmountCounter extends StatelessWidget {
  final int _count;
  final bool _atMinLimit;
  final bool _atMaxLimit;
  final Function(bool) _handleCount;

  AmountCounter(
      this._count, this._handleCount, this._atMinLimit, this._atMaxLimit);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.remove, size: 15),
            onPressed: (_atMinLimit) ? null : () => _handleCount(false),
          ),
          Container(
            width: 23,
            alignment: Alignment.center,
            child: Text('$_count', style: TextStyle(fontSize: 20)),
          ),
          IconButton(
            icon: Icon(Icons.add, size: 15),
            onPressed: (_atMaxLimit) ? null : () => _handleCount(true),
          ),
        ],
      ),
    );
  }
}
