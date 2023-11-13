import 'package:flutter/material.dart';

class ModalBottom extends StatelessWidget {
  ModalBottom({
    super.key,
    required this.addTask,
  });
  String textChange = '';
  TextEditingController controller = TextEditingController();

  final Function addTask;
  void _handlerChange(BuildContext context) {
    final name = controller.text;
    if (name.isEmpty) {
      return;
    }
    addTask(name);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 200,
        color: Colors.white,
        child: Column(children: [
          TextField(
            controller: controller,
            // onChanged: (value) => textChange = value,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: 'Your task'),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => _handlerChange(context),
                child: const Text(
                  'Add',
                )),
          )
        ]),
      ),
    );
  }
}
