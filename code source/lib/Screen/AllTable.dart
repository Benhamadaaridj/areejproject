
import 'package:flutter/material.dart';

import 'package:prj_1/Component/tabbar_widget.dart';
import 'package:prj_1/Screen/editable_page.dart';



class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => TabBarWidget(
        title: 'Data Table',
        tabs: const [
          Tab(icon: Icon(Icons.edit), text: 'Editable'),
          Tab(icon: Icon(Icons.sort_by_alpha), text: 'Sortable'),
          Tab(icon: Icon(Icons.select_all), text: 'Selectable'),
        ],
        children: [
          EditablePage(),
          Container(),
          Container(),
        ],
      );
}