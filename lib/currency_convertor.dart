import 'package:flutter/material.dart';

class CurrencyConvertor extends StatefulWidget {
  const CurrencyConvertor({super.key});
  @override
  State createState() => _CurrencyConvertor();
}

class _CurrencyConvertor extends State {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(30, 31, 34, 1),
        centerTitle: false,
        title: const Text(
          "Currency Convertor ",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(30, 31, 34, 1),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          "INR ${result.toString()} ",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: "Please enter amount in usd",
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.blue,
                  filled: true,
                  fillColor: Colors.black12,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  enabledBorder: UnderlineInputBorder(),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ))),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextButton(
            onPressed: () {
              setState(() {
                result = double.parse(textEditingController.text) * 83.02;
              });
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14))),
            child: const Text(
              "Convert",
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}
