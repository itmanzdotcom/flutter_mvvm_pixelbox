class User {

  final String fullName;
  final String email;

  const User({this.fullName, this.email});

  User.fromMap(Map<String, dynamic> map) :
        fullName = "${map['name']['first']} ${map['name']['last']}",
        email = map['email'];

}