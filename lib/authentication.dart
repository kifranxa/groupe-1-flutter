import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuth {
  Future<String> signIn(String email, String password);
  Future<String> signUp(String email, String password);
  Future<User> getCurrentUser();
  Future<void> sendEmailVerification();
  Future<void> signOut();
  Future<bool> isEmailVerified();
}

class Auth implements BaseAuth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String?> signInWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return user?.uid;
    }catch(e){
      print("erreur");
    }
    return null;
    
  }

  Future<String?> signUpWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return user?.uid;
    }catch(e){
      print("erreur");
    }
    return null;
  }

  Future<User?> getCurrentUserWithInfo() async {
    try{
      User? user = await _firebaseAuth.currentUser;
      return user;
    }catch(e){
      print("erreur current user");
    }
    return null;
  }

  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }

  Future<void> sendEmailVerification() async {
    User? user = await _firebaseAuth.currentUser;
    await user?.sendEmailVerification();
  }

  Future<bool> isEmailVerified() async {
    User? user = await _firebaseAuth.currentUser;
    return user!.emailVerified;
  }

  @override
  Future<User> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<String> signIn(String email, String password) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<String> signUp(String email, String password) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
