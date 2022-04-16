import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  final _headingStyle = const TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 36,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            child: Text('B: Costas, biceps e trapézio', style: _headingStyle),
          ),
          ListTile(
            title: const Text('Supino reto na máquina'),
            subtitle: const Text('4 × 8-10'),
            trailing: Wrap(
              spacing: 24,
              children: const <Widget>[
                Icon(
                  Icons.comment,
                  semanticLabel: 'Add notes',
                ),
                Icon(
                  Icons.check,
                  semanticLabel: 'Complete',
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Supino reto na máquina'),
            subtitle: const Text('4 × 8-10'),
            trailing: Wrap(
              spacing: 24,
              children: const <Widget>[
                Icon(
                  Icons.comment,
                  semanticLabel: 'Add notes',
                ),
                Icon(
                  Icons.check,
                  semanticLabel: 'Complete',
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
