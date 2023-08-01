import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_view_model.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();
    return Scaffold(
        appBar: AppBar(
          title: const Text('OutlineButton Example'),
        ),
        body: Container(
          child: _ui(userViewModel),
        ));
  }

  _ui(UserViewModel userViewModel) {
    if (userViewModel.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      if (userViewModel.errorMessage.isNotEmpty) {
        return Center(
          child: Text(userViewModel.errorMessage),
        );
      } else {
        return ListView.builder(
          itemCount: userViewModel.userListModel.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(userViewModel.userListModel[index].title),
            );
          },
        );
      }
    }
  }
}
