import 'package:flutter/material.dart';
import 'package:prj_1/Component/scrollable_widget.dart';
import 'package:prj_1/Component/text_dialog_widget.dart';
import 'package:prj_1/Utils.dart';
import 'package:prj_1/data/Etuddata.dart';
import 'package:prj_1/model/Etudmodel.dart';

class EditablePage extends StatefulWidget {
  @override
  _EditablePageState createState() => _EditablePageState();
}

class _EditablePageState extends State<EditablePage> {
  late List<User> users;

  @override
  void initState() {
    super.initState();
    this.users = List.of(allUsers);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ScrollableWidget(child: buildDataTable()),
      );

  Widget buildDataTable() {
    final columns = ['First Name', 'Last Name', '1', '2', '3', '4', '5'];

    return DataTable(
      columns: getColumns(columns),
      rows: getRows(users),
    );
  }

  List<DataColumn> getColumns(List<String> columns) {
    return columns.map((String column) {
      return DataColumn(
        label: Text(column),
      );
    }).toList();
  }

  List<DataRow> getRows(List<User> users) => users.map((User user) {
        final cells = [user.firstName, user.lastName, '', '', '', '', '']; // Add placeholders

        return DataRow(
          cells: Utils.modelBuilder(cells, (index, cell) {
            final showEditIcon = index == 0 || index == 1;

            return DataCell(
              Text('$cell'),
              showEditIcon: showEditIcon,
              onTap: () {
                switch (index) {
                  case 0:
                    editFirstName(user);
                    break;
                  case 1:
                    editLastName(user);
                    break;
                }
              },
            );
          }),
        );
      }).toList();

  Future editFirstName(User editUser) async {
    final firstName = await showTextDialog(
      context,
      title: 'Change First Name',
      value: editUser.firstName,
    );

    setState(() => users = users.map((user) {
          final isEditedUser = user == editUser;
          return isEditedUser ? user.copy(firstName: firstName) : user;
        }).toList());
  }

  Future editLastName(User editUser) async {
    final lastName = await showTextDialog(
      context,
      title: 'Change Last Name',
      value: editUser.lastName,
    );

    setState(() => users = users.map((user) {
          final isEditedUser = user == editUser;
          return isEditedUser ? user.copy(lastName: lastName) : user;
        }).toList());
  }
}
