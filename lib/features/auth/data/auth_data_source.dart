import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthDataSource {
  Future<void> getOTPMessage(String phoneNumber);

  Future<String> verifyOTP(String otp);
}

class AuthDataSourceImpl extends AuthDataSource {
  final firebaseAuth = FirebaseAuth.instance;

  int? forceResendingToken;
  String? verificationId;

  @override
  Future<void> getOTPMessage(String phoneNumber) async {
    await firebaseAuth.verifyPhoneNumber(
      phoneNumber: _phoneHandler(phoneNumber),
      timeout: const Duration(seconds: 60),
      verificationCompleted: (PhoneAuthCredential phoneAuthCredential) async {
        await firebaseAuth.signInWithCredential(phoneAuthCredential);
      },
      verificationFailed: (FirebaseAuthException error) {
        throw error.message.toString();
      },
      codeSent: (verificationId, forceToken) {
        forceResendingToken = forceToken;
        this.verificationId = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        this.verificationId = verificationId;
      },
      forceResendingToken: forceResendingToken,
    );
  }

  _phoneHandler(String phoneNumber) {
    if (phoneNumber.startsWith("0")) {
      return "+2$phoneNumber";
    } else {
      return phoneNumber;
    }
  }

  @override
  Future<String> verifyOTP(String otp) async {
    print(verificationId);
    try {
      final PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId!,
        smsCode: otp,
      );
      UserCredential userCredential =
          await firebaseAuth.signInWithCredential(credential);
      return userCredential.user!.uid;
    } catch (e) {
      throw e.toString();
    }
  }
}
