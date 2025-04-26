// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `With Taagira\n  renting is easy`
  String get withTaagiranRentingIsEasy {
    return Intl.message(
      'With Taagira\n  renting is easy',
      name: 'withTaagiranRentingIsEasy',
      desc: '',
      args: [],
    );
  }

  /// `Let's get started`
  String get letsGetStarted {
    return Intl.message(
      'Let\'s get started',
      name: 'letsGetStarted',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up To`
  String get signUpTo {
    return Intl.message('Sign Up To', name: 'signUpTo', desc: '', args: []);
  }

  /// `Taagira`
  String get taagira {
    return Intl.message('Taagira', name: 'taagira', desc: '', args: []);
  }

  /// `With Phone Number`
  String get withPhoneNumber {
    return Intl.message(
      'With Phone Number',
      name: 'withPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `I Agree To The `
  String get iAgreeToThe {
    return Intl.message(
      'I Agree To The ',
      name: 'iAgreeToThe',
      desc: '',
      args: [],
    );
  }

  /// `Terms Of Services `
  String get termsOfServices {
    return Intl.message(
      'Terms Of Services ',
      name: 'termsOfServices',
      desc: '',
      args: [],
    );
  }

  /// `And `
  String get and {
    return Intl.message('And ', name: 'and', desc: '', args: []);
  }

  /// `Privacy Policy.`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy.',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Please Enter Valid Phone Number`
  String get pleaseEnterValidPhoneNumber {
    return Intl.message(
      'Please Enter Valid Phone Number',
      name: 'pleaseEnterValidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Valid Number`
  String get pleaseEnterValidNumber {
    return Intl.message(
      'Please Enter Valid Number',
      name: 'pleaseEnterValidNumber',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Login To`
  String get loginTo {
    return Intl.message('Login To', name: 'loginTo', desc: '', args: []);
  }

  /// `Enter the valid phone number`
  String get enterTheValidPhoneNumber {
    return Intl.message(
      'Enter the valid phone number',
      name: 'enterTheValidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter the valid name`
  String get enterTheValidName {
    return Intl.message(
      'Enter the valid name',
      name: 'enterTheValidName',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
