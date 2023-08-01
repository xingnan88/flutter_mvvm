import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/user.dart';
import 'package:flutter_application_1/user_service.dart';

class UserViewModel extends ChangeNotifier {
    bool _isLoading = false;
    List<UserInfo> _userListModel = [];
    String _errorMessage = '';

    bool get isLoading => _isLoading;
    List<UserInfo> get userListModel => _userListModel;
    String get errorMessage => _errorMessage;

    set isLoading(bool isLoading) {
        _isLoading = isLoading;
        notifyListeners();
    }
    set errorMessage(String errorMessage) {
        _errorMessage = errorMessage;
        notifyListeners();
    }

    UserViewModel() {
        getUser();
    }

    getUser() async {
        isLoading = true;
        try {
            _userListModel = await UserService.getUser();
        } catch (e) {
            errorMessage = e.toString();
        }
        isLoading = false;
    }
}