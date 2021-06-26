import 'package:flutter/material.dart';

class ListofUsers extends StatelessWidget {
  const ListofUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => Listofuserwidget(),
      separatorBuilder: (context, index) => Divider(),
      itemCount: 30,
    );
  }

  Widget Listofuserwidget() {
    return ListTile(
      dense: true,
      horizontalTitleGap: 2,
      minVerticalPadding: 0,
      leading: CircleAvatar(
        radius: 28,
        backgroundImage: AssetImage("assets/images/birimage.png"),
      ),
      title: Text("Majha Morya"),
      subtitle: Text(
        "1 new message | 2 days ago",
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}
