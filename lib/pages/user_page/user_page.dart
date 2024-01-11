import 'package:autoaid_garage/utils/socket.dart';
import 'package:autoaid_garage/utils/textField.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Nội dung trang user (có thể thêm thông tin người dùng, hình ảnh, v.v. ở đây)

            // Nút Đăng Xuất
            ElevatedButton(
              onPressed: () {
                SocketManager().disposeSocket();
                context.go('/login');
              },
              child: Text('Đăng Xuất'),
            ),
          ],
        ),
      ),
    );
  }
}
