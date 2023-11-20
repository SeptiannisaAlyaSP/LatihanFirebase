import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class RegistrationPage extends StatelessWidget {
  final RegistrationController _controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) => _controller.email.value = value,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 16),
            TextField(
              onChanged: (value) => _controller.password.value = value,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _controller.register(),
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
