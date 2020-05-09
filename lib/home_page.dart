import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/models/user.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Firestore.instance.collection('users').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return LinearProgressIndicator();
          return _buildUserList(context, snapshot.data.documents);
        });
  }

  Widget _buildUserList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final user = User.fromSnapshot(data);
    return Padding(
      key: ValueKey(user.firstName + user.lastName),
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text("${user.firstName} ${user.lastName}"),
          trailing: Text(
              "${user.birthDate.day.toString()}/${user.birthDate.month.toString()}/${user.birthDate.year.toString()}"),
          onTap: () => user.reference.updateData({'firstName': "Bob"}),
        ),
      ),
    );
  }
}
