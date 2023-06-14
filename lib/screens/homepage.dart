import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controllerOne = TextEditingController();
  TextEditingController controllerTwo = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 700,
          color: Colors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Result = $result'),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: controllerOne,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a number',
                        label: Text('Enter a number'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: controllerTwo,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter another number',
                        label: Text('Enter another number'),
                      ),
                    ),
                  ],
                ),
              ),
              Wrap(
                //alignment: WrapAlignment.spaceEvenly,
                spacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      double firstInput = double.parse(controllerOne.text);
                      double secondInput = double.parse(controllerTwo.text);
                      result = firstInput + secondInput;
                      setState(() {});
                    },
                    child: const Text('Add'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      double firstInput = double.parse(controllerOne.text);
                      double secondInput = double.parse(controllerTwo.text);
                      result = firstInput - secondInput;
                      setState(() {});
                    },
                    child: const Text('Sub'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      double firstInput = double.parse(controllerOne.text);
                      double secondInput = double.parse(controllerTwo.text);
                      result = firstInput * secondInput;
                      setState(() {});
                    },
                    child: const Text('Mul'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      double firstInput = double.parse(controllerOne.text);
                      double secondInput = double.parse(controllerTwo.text);
                      result = firstInput / secondInput;
                      setState(() {});
                    },
                    child: const Text('Div'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
