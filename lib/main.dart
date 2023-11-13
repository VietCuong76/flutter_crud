import 'package:flutter/material.dart';
import 'component/card_body.dart';
import 'component/modal_bottom.dart';
import 'modules/items.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<DataItems> items = [
    DataItems(id: 1, name: 'Lê Viết Cường'),
    DataItems(id: 2, name: 'Phạm Văn Quý'),
    DataItems(id: 3, name: 'Nguyễn Vũ Quốc'),
    DataItems(id: 4, name: 'Nguyễn Minh Toàn'),
    DataItems(id: 5, name: 'Thành Lê')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Todo List',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: items
              .map((item) => CardBody(
                    item: item,
                  ))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(100))),
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return const ModalBottom();
            },
          );
        },
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
