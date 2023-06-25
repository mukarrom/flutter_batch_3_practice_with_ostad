import 'package:flutter/material.dart';
import 'package:practice_with_ostad/rabbil/rabbil_style.dart';

class SumApp extends StatelessWidget {
  const SumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sum App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sum App"),
        ),
        body: const MySumApp(),
      ),
    );
  }
}

class MySumApp extends StatefulWidget {
  const MySumApp({super.key});

  @override
  State<MySumApp> createState() => _MySumAppState();
}

class _MySumAppState extends State<MySumApp> {
  // map of text field to set input value
  Map<String, double> myTextFieldsNumbers = {"num1": 0, "num2": 0, "num3": 0};
  double sum = 0;

  sumAllNumber() {
    setState(() {
      sum = myTextFieldsNumbers['num1']! +
          myTextFieldsNumbers['num2']! +
          myTextFieldsNumbers['num3']!;
    });
  }

  @override
  Widget build(BuildContext context) {
    // get value from TextField and set into myTextFieldsNumbers map
    void handleTextFieldNumbers(inputKey, inputValue) {
      setState(() {
        myTextFieldsNumbers.update(
            inputKey, (value) => double.parse(inputValue));
      });
    }

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Total sum is: $sum',
            style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 28),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            onChanged: (value) {
              handleTextFieldNumbers('num1', value);
            },
            decoration: myTextInputDecoration('Number 1'),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            onChanged: (value) {
              handleTextFieldNumbers('num2', value);
            },
            decoration: myTextInputDecoration('Number 2'),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            onChanged: (value) {
              handleTextFieldNumbers('num3', value);
            },
            decoration: myTextInputDecoration('Number 3'),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    sumAllNumber();
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 24)),
                  child: const Text('Add')))
        ],
      ),
    );
  }
}
