// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(field) => "${field} must not be empty";

  static String m1(provider) => "${provider} sign up is not supported";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AccountAlready":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "Congratulations":
            MessageLookupByLibrary.simpleMessage("Congratulations"),
        "CreateAccount": MessageLookupByLibrary.simpleMessage("Create Account"),
        "CreateAccountWith":
            MessageLookupByLibrary.simpleMessage("Create account with"),
        "Email": MessageLookupByLibrary.simpleMessage("Email"),
        "LogIn": MessageLookupByLibrary.simpleMessage("Login"),
        "MustNotBeEmpty": m0,
        "Name": MessageLookupByLibrary.simpleMessage("Name"),
        "NotSupported": m1,
        "Or": MessageLookupByLibrary.simpleMessage("Or"),
        "Password": MessageLookupByLibrary.simpleMessage("Password"),
        "SignUp": MessageLookupByLibrary.simpleMessage("Signup"),
        "WaitLonger":
            MessageLookupByLibrary.simpleMessage("Please wait a little longer")
      };
}
