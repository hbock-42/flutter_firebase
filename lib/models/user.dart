import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String firstName;
  final String lastName;
  final DocumentReference reference;
  final Timestamp _timeStamp;
  DateTime get birthDate => _timeStamp.toDate();

  User.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['firstName'] != null),
        assert(map['lastName'] != null),
        assert(map['birthDate'] != null),
        firstName = map['firstName'],
        lastName = map['lastName'],
        _timeStamp = map['birthDate'];

  User.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "User<$firstName:$lastName:$birthDate>";
}
