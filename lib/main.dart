import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:const Color(0xff90a4ae),
        appBar: AppBar(
          backgroundColor: const Color(0xff546e7a),
          title: const Text(
            'My Lottery App',
            style: TextStyle(
              color: Color(0xfffafafa),
              fontFamily: 'RubikMedium',
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Lottery winning number is 4',
                style: TextStyle(
                  fontFamily: 'RubikRegular',
                  color: Color(0xff424242),
                  fontSize: 20.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: const Color(0xffe0e0e0),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: x == 4
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.done_all,
                          color: Colors.green,
                          size: 40.0,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Congratulation! you have won the lottery, \n Your condition matched',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'RubikRegular',
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 35.0,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Better luck next time your number is $x. \n Try again',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'RubikRegular',
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          child: const Icon(
            Icons.refresh,
          ),
          onPressed: () {
            x = random.nextInt(10);
            print(x);
            setState(() {});
          },
        ),
      ),
    );
  }
}
