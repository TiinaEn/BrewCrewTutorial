import 'package:brew_crew/models/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

//creates user object of firebase user
  Usermodel _userFromFirebaseUser(User user) {
    return Usermodel(uid: user.uid);
  }

//auth change user stream
  Stream<Usermodel> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return 'no user';
    }
  }
  //sign in anon

  //sign in with email and passwd

  //reigster with email and passwd

  //sign out
}
