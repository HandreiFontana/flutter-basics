import 'package:flutter/material.dart';

// import 'home_controller.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var controller = HomeController.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: Center(
//           child: Text('Handrei Lindo ${controller.value}',
//               textDirection: TextDirection.ltr)),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           controller.increment();
//         },
//       ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// class _HomePageState extends State<HomePage> {
//   var counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     final names = ['João', 'Maria', 'Joaquim', 'Handrei'];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: SizedBox(
//         width: double.infinity,
//         child: ListView.builder(
//           itemCount: names.length,
//           itemBuilder: ((context, index) {
//             final name = names[index];

//             return ListTile(
//               title: Text(name),
//             );
//           }),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           setState(() {
//             counter++;
//           });
//         },
//       ),
//     );
//   }
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final controller = TextEditingController();

//     final list = <String>['Handrei'];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                     child: TextField(
//                   controller: controller,
//                 )),
//                 IconButton(
//                     onPressed: () {
//                       final text = controller.text;
//                       setState(() {
//                         list.add(text);
//                       });
//                     },
//                     icon: const Icon(Icons.add))
//               ],
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: list.length,
//               itemBuilder: (context, index) {
//                 final item = list[index];
//                 return ListTile(
//                   title: Text(item),
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/background.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.3),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Bem-vindos ao Canadá!",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 70),
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.amber,
                        ),
                        onPressed: () {
                          print('Entrei no Canadá!');
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FlutterLogo(
                      size: 70,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
