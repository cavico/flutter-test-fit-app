import 'package:flutter/material.dart';
import 'package:flutter_test_fit_app/workout/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  // final _customDivider = ;
  final _customContainerPadding = const EdgeInsets.symmetric(vertical: 10);
  final _headingStyle = const TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 36,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          workoutBlock('Workout', const WorkoutListWidget()),
          _customDivider(),
        ],
      ),
    );
  }

  Divider _customDivider() => const Divider(thickness: 3);

  Container workoutBlock(headingText, widgetBody) {
    return Container(
      padding: _customContainerPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(headingText, style: _headingStyle),
          ),
          widgetBody,
        ],
      ),
    );
  }
}
