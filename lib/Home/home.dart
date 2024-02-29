import 'package:flutter/material.dart';
import 'package:weak4/Home/widgets/grid_view_bulder.dart';
import 'package:weak4/Home/widgets/list_view_builder.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> text = [const Text("List View"), const Text("Grid View")];

  List<Widget> widgetPages = [
    const ListViewBuilder(),
    const GridViewBulder(),
  ];
  int slectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(label: 'listview', icon: Icon(Icons.list)),
            BottomNavigationBarItem(
                label: 'gridview', icon: Icon(Icons.grid_on))
          ],
          currentIndex: slectindex,
          onTap: (index) {
            setState(() {
              slectindex = index;
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: text[slectindex],
          centerTitle: true,
        ),
        // body: ListViewBuilder(),
        body: widgetPages.elementAt(slectindex));
  }
}
