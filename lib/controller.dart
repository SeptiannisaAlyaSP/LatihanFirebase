// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  RxString email = ''.obs;
  RxString password = ''.obs;

  Future<void> register() async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );

      // Registrasi berhasil
      print('Registrasi berhasil: ${userCredential.user?.email}');
    } catch (e) {
      // Handle error
      print('Error saat registrasi: $e');
    }
  }
}
