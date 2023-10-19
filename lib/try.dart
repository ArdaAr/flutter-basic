import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({Key? key}) : super(key:key);

  @override
  Widget build(context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                ExpandedWidget(),
                FlexibleWidget(),
              ],
            ),Row(
              children: [
                ExpandedWidget(),
                ExpandedWidget(),
              ],
            ),Row(
              children: [
                FlexibleWidget(),
                FlexibleWidget(),
              ],
            ),Row(
              children: [
                FlexibleWidget(),
                ExpandedWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super (key : key);

  @override
  Widget build(context) {
    return Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.teal,
            border: Border.all(color: Colors.white),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Expanded',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        )
    );
  }
}


class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key:key);

  @override
  Widget build(context) {
    return Flexible(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            border: Border.all(color: Colors.white),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Flexible',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 24,
              ),
            ),
          ),
        )
    );
  }
}


// class Rainbow extends StatelessWidget {
//   const Rainbow({Key? key}) : super(key:key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Expanded(
//           flex: 1,
//           child: Container(
//             color: Colors.red,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.orange,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.yellow,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.green,
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: Container(
//             color: Colors.blue,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.indigo,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.purple,
//           ),
//         ),
//       ],
//     );
// }
// }


// class ScrollingScreen extends StatelessWidget {
//   const ScrollingScreen({Key? key}) : super(key: key);
//
//   final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//
//   final List<String> strList = const <String>['satu','dua','tiga','empat','lima'];
//
//   @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     body: ListView(
//   //       children: strList.map((isiList) {
//   //         return Container(
//   //           height: 250,
//   //           decoration: BoxDecoration(
//   //             color: Colors.grey,
//   //             border: Border.all(color: Colors.black),
//   //           ),
//   //           child: Center(
//   //             child: Text(
//   //               isiList,
//   //               style: const TextStyle(fontSize: 50, color: Colors.white,),
//   //             ),
//   //           ),
//   //         );
//   //       }).toList(),
//   //     ),
//   //   );
//   // }
//
// //   using ListView.builder
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.separated(
//           itemCount: numberList.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               height: 250,
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                 border: Border.all(color: Colors.black),
//               ),
//               child: Center(
//                 child: Text(
//                   '${numberList[index]}',
//                   style: const TextStyle(fontSize: 50),
//                 ),
//               ),
//             );
//           },
//         separatorBuilder: (BuildContext context, int index) {
//             return const Divider();
//         },
//       )
//     );
//   }
// }