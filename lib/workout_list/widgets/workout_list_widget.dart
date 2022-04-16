import 'package:flutter/material.dart';

class WorkoutListWidget extends StatelessWidget {
  const WorkoutListWidget({Key? key}) : super(key: key);
  final _workoutLetterStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  SizedBox workoutCard(_workoutKey, _workoutDescription) {
    return SizedBox(
      width: 180,
      child: Card(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 110,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          workoutCard('A', 'Peitoral, ombros e triceps'),
          workoutCard('B', 'Costas, biceps e trapézio'),
          workoutCard('C', 'Pernas e abdomen'),
        ],
      ),
    );
  }
}
