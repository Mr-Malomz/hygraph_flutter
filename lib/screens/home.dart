import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hygraph_flutter/components/news_row.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    //todo
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Trending News', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: .5, color: Colors.grey),
                ),
              ),
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NewsRow(
                          url:
                              "https://images.unsplash.com/photo-1701505708183-59f709e7d4e6?q=80&w=3264&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          date: "2024-03-08",
                          preview: "Sample news preview $index",
                          title: "Sample news title $index")
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
