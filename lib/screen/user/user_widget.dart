import 'package:flutter/material.dart';
import 'package:fmvvm_pixelbox/di/injector.dart';
import 'package:fmvvm_pixelbox/factory/view_model_provider.dart';
import 'package:fmvvm_pixelbox/model/status.dart';
import 'package:fmvvm_pixelbox/model/user.dart';
import 'package:fmvvm_pixelbox/screen/user/user_view_model.dart';

class UserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: UserStateWidget(),
    );
  }
}

class UserStateWidget extends StatefulWidget {
  @override
  _UserPageState createState() => new _UserPageState();
}

class _UserPageState extends State<UserStateWidget> {
  UserViewModel _userViewModel;

  bool _isLoading = true;
  List<User> _users;

  _UserPageState() {
    _userViewModel = ViewModelProviders.of<UserViewModel>(Injector.provideUserViewModelFactory());
  }

  @override
  void initState() {
    super.initState();
    _isLoading = true;

    _userViewModel.loadUser(20).then((res) => res.listen((it) {
      setState(() {
        _isLoading = false;
      });
      if (it.status == Status.SUCCESS) {
        setState(() {
          _users = it.data;
        });
      } else if (it.status == Status.WARNING) {
      } else if (it.status == Status.NETWORK) {
      } else if (it.status == Status.UNAUTHORIZED) {
      } else {}
    }));
  }

  @override
  Widget build(BuildContext context) {
    var widget;

    if (_isLoading) {
      widget = Center(
          child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: CircularProgressIndicator()));
    } else {
      widget = ListView(children: <Widget>[Column(children: _buildUserList())]);
    }

    return widget;
  }

  List<_UserListItem> _buildUserList() {
    return _users.map((contact) => _UserListItem(contact)).toList();
  }

  @override
  void dispose() {
    super.dispose();
    _userViewModel.dispose();
  }
}

class _UserListItem extends ListTile {
  _UserListItem(User user)
      : super(
      title: Text(user.fullName),
      subtitle: Text(user.email),
      leading: CircleAvatar(child: Text(user.fullName[0])));
}