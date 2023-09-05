
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_one_tap_sign_in/google_one_tap_sign_in.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final String _webClientId = "[YOUR-WEB-CLIENT-ID]";

 // File? _image;

  @override
  void initState() {
    super.initState();
    if (kDebugMode) {
      print("INIT STATE");
    }
  }

  void _onSignIn() async {
    var data = await GoogleOneTapSignIn.startSignIn(webClientId: _webClientId);
    if (data != null) {
      /// Whatever you do with [SignInResult] data
      if (kDebugMode) {
        print("Id Token : ${data.idToken ?? "-"}");
        print("ID : ${data.id ?? "-"}");
    } }
  }

  void _onSignInWithHandle() async {
    var result = await GoogleOneTapSignIn.handleSignIn(webClientId: _webClientId);

    if (result.isTemporaryBlock) {
      // // TODO: Tell your users about this status
      if (kDebugMode) {
        print("Temporary BLOCK");
      }
    }

    if (result.isCanceled) {
      // // TODO: Tell your users about this status
      if (kDebugMode) {
        print("Canceled");
      }
    }

    if (result.isFail) {
      // TODO: Tell your users about this status
    }

    if (result.isOk) {
      // // TODO: Whatever you do with [SignInResult] data
      if (kDebugMode) {
        print("OK");
        print("Id Token : ${result.data?.idToken ?? "-"}");
        print("Email : ${result.data?.username ?? "-"}");
    }}
  }
  @override
  Widget build(BuildContext context) {
    AppBar(
      title: const Text('Settings'),
      centerTitle: true,
    );
    return ListView(
      shrinkWrap: true,
      children:[
        Column(
          children:[
            const SizedBox(
              height: 3.3,
            ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: TextButton(
                    onPressed: () => _onSignIn(),
                    child: const Text('Sign in') ,),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: TextButton(
                    onPressed: () { _onSignInWithHandle(); },
                    child: const Text('Sign In With Google'),
                    ),),  ],              ),
            ],
        );
  }
}