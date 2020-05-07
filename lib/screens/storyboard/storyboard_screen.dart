import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:dls_test/dls_test.dart';

class StoryboardScreen extends StatefulWidget {
  @override
  _StoryboardScreenState createState() => _StoryboardScreenState();
}

class _StoryboardScreenState extends State<StoryboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Storybook(
      children: [
        Story(
          name: 'Flat button',
          builder: (context, kb) =>
              MaterialButton(child: Text('Flat button'), onPressed: () {}),
        ),
        Story(
          name: 'Raised button',
          builder: (context, kb) =>
              RaisedButton(child: Text('Raised button'), onPressed: () {}),
        ),
        Story(
          name: 'Input field',
          builder: (context, kb) => TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Input field',
            ),
          ),
        ),
        Story(
          name: 'FlatButton Filled',
          builder: (context, kb) {
            return TestScreen();
          },
        ),
      ],
    );

    // return Storyboard([
    //   TextFieldStory(),
    //   RaisedButtonStory(),
    //   FlatButtonStory(),
    // ]);
  }
}

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: FlatButton(
          child: Text("FlatButton Filled"),
          onPressed: () {
            setState(() {
              selected = !selected;
            });
          },
        ).filled(
            context: context, selected: selected, selectedColor: Colors.red),
      ),
    );
  }
}
