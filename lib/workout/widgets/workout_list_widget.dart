import 'package:flutter/material.dart';
import 'package:flutter_test_fit_app/workout/index.dart';

class WorkoutListWidget extends StatelessWidget {
  const WorkoutListWidget({Key? key}) : super(key: key);
  final _workoutLetterStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  SizedBox workoutCard(
    context,
    String _workoutKey,
    String _workoutDescription,
  ) {
    return SizedBox(
      width: 180,
      child: Card(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WorkoutScreen()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    _workoutKey,
                    style: _workoutLetterStyle,
                  ),
                ),
                Text(_workoutDescription),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 110,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          workoutCard(context, 'A', 'Peitoral, ombros e triceps'),
          workoutCard(context, 'B', 'Costas, biceps e trapézio'),
          workoutCard(context, 'C', 'Pernas e abdomen'),
        ],
      ),
    );
  }
}
