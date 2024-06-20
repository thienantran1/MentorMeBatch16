import 'package:flutter/material.dart';

class SignUpLinkedIn extends StatelessWidget {
  const SignUpLinkedIn({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Log in with LinkedIn'),
    ),
    body: Center(
      child: Text(
        'Welcome to LinkedIn',
        style: Theme.of(context).textTheme.headlineLarge,
      )
    )
  );
}