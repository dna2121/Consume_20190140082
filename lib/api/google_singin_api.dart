import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  static final _clientIDWeb =
      '873002140263-ctga9m0gp5jdm1ia2d2scd99ttnddhd3.apps.googleusercontent.com';
  static final _googleSignIn = GoogleSignIn(clientId: _clientIDWeb);

  static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();

  static Future logout() => _googleSignIn.disconnect();
}
