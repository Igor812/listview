import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_view.dart';
import 'user.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(
        title: 'Список пользователей:',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _postPhoneVM = UserViewModel(phoneItems: []);
  List<UserResponse>? postPhoneItems;

  @override
  void initState() {
    super.initState();
    postPhoneItems = _postPhoneVM.getPostPhone();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: ListView.builder(
          itemCount: postPhoneItems!.length,
          itemBuilder: (context, index) {
            var postPhone = postPhoneItems![index];
            return ListTile(
              tileColor: Theme.of(context).cardColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(10.0), top: Radius.circular(2.0)),
              ),
              title: new ItemView(
                postPhone.name,
                postPhone.phoneNo,
              ),
              onTap: () {},
            );
          },
        ));
  }
}

class UserViewModel {
  List<UserResponse> phoneItems;

  UserViewModel({required this.phoneItems});

  getPostPhone() => <UserResponse>[
        UserResponse(
          phoneNo: '+7 953 -XXX-XX-XX',
          name: 'Иван',
        ),
        UserResponse(
          phoneNo: '+7 921 -XXX-XX-XX',
          name: 'Мария',
        ),
        UserResponse(
          phoneNo: '+7 951 -XXX-XX-XX',
          name: 'Сергей',
        ),
        UserResponse(
          phoneNo: '+7 951 -XXX-XX-XX',
          name: 'Юлия',
        ),
        UserResponse(
          phoneNo: '+7 953 -XXX-XX-XX',
          name: 'Иван',
        ),
        UserResponse(
          phoneNo: '+7 921 -XXX-XX-XX',
          name: 'Мария',
        ),
        UserResponse(
          phoneNo: '+7 951 -XXX-XX-XX',
          name: 'Сергей',
        ),
        UserResponse(
          phoneNo: '+7 951 -XXX-XX-XX',
          name: 'Юлия',
        ),
        UserResponse(
          phoneNo: '+7 953 -XXX-XX-XX',
          name: 'Иван',
        ),
        UserResponse(
          phoneNo: '+7 921 -XXX-XX-XX',
          name: 'Мария',
        ),
        UserResponse(
          phoneNo: '+7 951 -XXX-XX-XX',
          name: 'Сергей',
        ),
        UserResponse(
          phoneNo: '+7 951 -XXX-XX-XX',
          name: 'Юлия',
        ),
        UserResponse(
          phoneNo: '+7 953 -XXX-XX-XX',
          name: 'Иван',
        ),
        UserResponse(
          phoneNo: '+7 921 -XXX-XX-XX',
          name: 'Мария',
        ),
        UserResponse(
          phoneNo: '+7 951 -XXX-XX-XX',
          name: 'Сергей',
        ),
        UserResponse(
          phoneNo: '+7 951 -XXX-XX-XX',
          name: 'Юлия',
        ),
        UserResponse(
          phoneNo: '+7 953 -XXX-XX-XX',
          name: 'Иван',
        ),
        UserResponse(
          phoneNo: '+7 921 -XXX-XX-XX',
          name: 'Мария',
        ),
        UserResponse(
          phoneNo: '+7 951 -XXX-XX-XX',
          name: 'Сергей',
        ),
        UserResponse(
          phoneNo: '+7 951 -XXX-XX-XX',
          name: 'Юлия',
        ),
      ];
}
