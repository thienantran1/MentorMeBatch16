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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Create Account`
  String get CreateAccount {
    return Intl.message(
      'Create Account',
      name: 'CreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create account with`
  String get CreateAccountWith {
    return Intl.message(
      'Create account with',
      name: 'CreateAccountWith',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get Or {
    return Intl.message(
      'Or',
      name: 'Or',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations`
  String get Congratulations {
    return Intl.message(
      'Congratulations',
      name: 'Congratulations',
      desc: '',
      args: [],
    );
  }

  /// `Please wait a little longer`
  String get WaitLonger {
    return Intl.message(
      'Please wait a little longer',
      name: 'WaitLonger',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get Name {
    return Intl.message(
      'Name',
      name: 'Name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message(
      'Email',
      name: 'Email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Signup`
  String get SignUp {
    return Intl.message(
      'Signup',
      name: 'SignUp',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get AccountAlready {
    return Intl.message(
      'Already have an account?',
      name: 'AccountAlready',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get LogIn {
    return Intl.message(
      'Login',
      name: 'LogIn',
      desc: '',
      args: [],
    );
  }

  /// `{provider} sign up is not supported`
  String NotSupported(Object provider) {
    return Intl.message(
      '$provider sign up is not supported',
      name: 'NotSupported',
      desc: '',
      args: [provider],
    );
  }

  /// `{field} must not be empty`
  String MustNotBeEmpty(Object field) {
    return Intl.message(
      '$field must not be empty',
      name: 'MustNotBeEmpty',
      desc: '',
      args: [field],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
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
