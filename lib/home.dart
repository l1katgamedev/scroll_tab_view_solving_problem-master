import 'package:flutter/material.dart';
import 'package:scroll_problem/top.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('No Problem'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
              Tab(icon: Icon(Icons.camera_alt), text: "Tab 2"),
              Tab(icon: Icon(Icons.camera_front), text: "Tab 3"),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      color: Colors.redAccent,
                      child: const Center(
                        child: Text('First tab content with 100 height'),
                      ),
                    ),
                    const SizedBox(
                      height: 200,
                      child: Center(
                        child: Text('Second tab content with 200 height'),
                      ),
                    ),
                    for (int i = 0; i < 1; i++) ...{TopWidget()},
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      color: Colors.redAccent,
                      child: const Center(
                        child: Text('First tab content with 100 height'),
                      ),
                    ),
                    const SizedBox(
                      height: 200,
                      child: Center(
                        child: Text('Second tab content with 200 height'),
                      ),
                    ),
                    for (int i = 0; i < 1; i++) ...{TopWidget()},
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      color: Colors.redAccent,
                      child: const Center(
                        child: Text('First tab content with 100 height'),
                      ),
                    ),
                    const SizedBox(
                      height: 200,
                      child: Center(
                        child: Text('Second tab content with 200 height'),
                      ),
                    ),
                    for (int i = 0; i < 1; i++) ...{TopWidget()},
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
