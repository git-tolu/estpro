import 'package:estpro/dashboard.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  late String _username;
  late String _password;

  get http => null;

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      // Send a login request to the server
      var response = await http.post(
        Uri.parse('http://example.com/login.php'),
        body: {
          'username': _username,
          'password': _password,
        },
      );

      // Check the response from the server
      if (response.body == 'success') {
        // User is authenticated, navigate to the home screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Dashboard()),
        );
      } else {
        // User is not authenticated, show an error message
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Invalid username or password')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your username';
              }
              return null;
            },
            onSaved: (value) {
              _username = value!;
            },
            decoration: const InputDecoration(
              labelText: 'Username',
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            onSaved: (value) {
              _password = value!;
            },
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _submit,
            child: const Text('Log In'),
          ),
        ],
      ),
    );
  }
}
