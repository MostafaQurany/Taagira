// lib/core/utils/server/app_exceptions.dart

import 'dart:async'; // For TimeoutException
import 'dart:io'; // For SocketException

import 'package:firebase_core/firebase_core.dart'; // For FirebaseException
import 'package:flutter/services.dart'; // For PlatformException
// import 'package:dio/dio.dart'; // Uncomment if you use Dio

/// A centralized handler for processing various exceptions and
/// returning user-friendly error messages.
class AppExceptionHandler {
  /// Takes an error object and returns a user-friendly error message.
  ///
  /// Checks the type of the error and returns specific messages for common
  /// framework/platform exceptions, and provides generic messages for others.
  static String getMessage(dynamic e) {
    // Optional: Log the original error for debugging
    // print("Handling error: ${error.runtimeType} - $error");
    // Consider using a proper logging package

    // --- Handle Common Framework/Platform Exceptions ---
    if (e is FirebaseException) {
      // Handle Firebase errors (Authentication, Firestore, Storage, etc.)
      // You could add a switch(error.code) here for more specific Firebase error codes
      // like 'permission-denied', 'user-not-found', 'unavailable', etc.
      // For example:
      // switch (error.code) {
      //   case 'permission-denied':
      //     return 'Permission denied. Please check your access rights.';
      //   case 'network-request-failed':
      //      return 'Network error. Please check your internet connection.';
      //   // Add more specific cases as needed
      //   default:
      //     return error.message ?? 'An unknown Firebase error occurred.';
      // }
      return e.message ?? 'A Firebase error occurred. Please try again.';
    }
    // else if (error is DioException) { // Uncomment if using Dio
    //   // Handle Dio network errors
    //   if (error.type == DioExceptionType.connectionTimeout ||
    //       error.type == DioExceptionType.sendTimeout ||
    //       error.type == DioExceptionType.receiveTimeout) {
    //     return 'Connection timed out. Please try again.';
    //   } else if (error.type == DioExceptionType.connectionError || error.error is SocketException) {
    //      return 'Network error: Please check your internet connection.';
    //   } else if (error.response != null) {
    //      // Try to get a message from the response if available
    //      return 'Server error (${error.response?.statusCode}): ${error.message ?? 'Please try again.'}';
    //   }
    //   return error.message ?? 'A network communication error occurred.';
    // }
    else if (e is SocketException) {
      // Specific network connection error
      return 'Network error: Please check your internet connection and try again.';
    } else if (e is TimeoutException) {
      // Async operation timed out
      return 'The operation timed out. Please try again.';
    } else if (e is PlatformException) {
      // Errors from platform channels (native code)
      // You might want to check error.code for specific platform errors
      return e.message ?? 'A platform error occurred. Please try again.';
    } else if (e is FormatException) {
      // Errors during data parsing (e.g., JSON, numbers)
      return 'Invalid data format encountered. Please contact support if this persists.';
    }
    // --- Handle Generic Exceptions and Errors ---
    else if (e is Exception) {
      // Catch any other standard Exception
      // Avoid showing error.toString() directly to the user
      // Log the actual error for developers: print(error);
      return 'An unexpected error occurred. Please try again later.';
    } else {
      // Catch Dart Errors (like OutOfMemoryError, StackOverflowError) or other throwables
      // These usually indicate programming errors or critical issues.
      // Log the actual error for developers: print(error);
      return 'A critical error occurred. Please restart the app or contact support.';
    }
  }
}

class DatabaseException implements Exception {
  final String message;
  final String? code; // Optional: Firestore error code

  DatabaseException({required this.message, this.code});

  @override
  String toString() => 'DatabaseException(message: $message, code: $code)';
}
