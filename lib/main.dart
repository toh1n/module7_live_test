import 'package:flutter/material.dart';
import 'package:module7_live_test/second_screen.dart';

main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Counter Value: "),
            Text(
              "$counter",
              style: const TextStyle(fontSize: 45),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen),
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                          if (counter == 5) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text("Counter Alert"),
                                    content: const Text("Counter value is 5!"),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text("OK"))
                                    ],
                                  );
                                });
                          }
                          if (counter == 10) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const SecondScreen()));
                          }
                        },
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent),
                        onPressed: () {
                          setState(() {
                            counter--;
                          });
                          if (counter == 5) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text("Counter Alert"),
                                    content: const Text("Counter value is 5!"),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text("OK"))
                                    ],
                                  );
                                });
                          }
                          if (counter == 10) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const SecondScreen()));
                          }
                        },
                        child: const Icon(Icons.remove),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
