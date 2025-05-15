import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:taggira/features/user/model/user_model.dart';

abstract class AuthDataSource {
  Future<void> getOTPMessage(String phoneNumber);

  Future<String> verifyOTP(String otp);
  Future<void> logOut();
}

class AuthDataSourceImpl extends AuthDataSource {
  final fireStore = FirebaseFirestore.instance;
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
    print("verificationId$verificationId");
    try {
      final PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId!,
        smsCode: otp,
      );
      final res = await firebaseAuth.signInWithCredential(credential);
      return res.user?.uid ?? "userId";
    } catch (e) {
      debugPrint('OTP verification failed: $e');
      throw Exception("OTP verification failed. Please try again.");
    }
  }

  @override
  Future<void> logOut() async {
    try {
      await firebaseAuth.signOut();
    } catch (e) {
      debugPrint('Sign Out failed: $e');
      throw Exception("Sign Out . Please try again.");
    }
  }
}
