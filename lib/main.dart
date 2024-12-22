import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode fn1 = FocusNode();
    FocusNode fn2 = FocusNode();
    var size = MediaQuery.of(context).size;
    var mqHeight = MediaQuery.of(context).size.height;
    var mqWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        body: Container(
            height: mqHeight,
            width: mqWidth,
            color: Colors.yellow,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: mqWidth * 0.8,
                    child: TextFormField(
                      focusNode: fn1,
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(fn2);
                      },
                      decoration: InputDecoration(
                          label: const FittedBox(
                            child: Text('Enter your name'),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: mqWidth * 0.5,
                    height: mqHeight * 0.05,
                    child: TextField(
                      focusNode: fn2,
                      decoration: InputDecoration(
                          label: const FittedBox(
                            child: Text('Enter your name'),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: mqWidth * 0.5,
                    height: mqHeight * 0.05,
                    child: TextField(
                      decoration: InputDecoration(
                          label: const FittedBox(
                            child: Text('Enter your name'),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: mqWidth * 0.5,
                    height: mqHeight * 0.05,
                    child: TextField(
                      decoration: InputDecoration(
                          label: const FittedBox(
                            child: Text('Enter your name'),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: mqWidth * 0.5,
                    height: mqHeight * 0.05,
                    child: TextField(
                      decoration: InputDecoration(
                          label: const FittedBox(
                            child: Text('Enter your name'),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
