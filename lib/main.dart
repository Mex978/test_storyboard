import 'package:flutter/material.dart';

import 'screens/storyboard/storyboard_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Test Storyboard',
    home: StoryboardScreen(),
  ));
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: Center(
//         child: TextField(
//           controller: TextEditingController(),
//           scrollController: ScrollController(),
//           decoration: InputDecoration(
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(5),
//                   borderSide: BorderSide(
//                     color: Colors.grey,
//                     width: 1,
//                   )),
//               hintText: 'Enter a search term'),
//         ),
//       ),
//     ),
//   ));
// }
