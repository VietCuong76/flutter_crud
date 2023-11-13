import 'package:flutter/material.dart';

class ModalBottom extends StatelessWidget {
  const ModalBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 200,
        color: Colors.amber,
        child: Column(children: [
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Your task'),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Add',
                )),
          )
        ]),
      ),
    );
  }
}
