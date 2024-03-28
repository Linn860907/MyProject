import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:onlineshop/firebase/home.dart';
import '../drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;

import '../../firebase/auth_gate.dart';
class person_1 extends StatefulWidget {
  const person_1({super.key});

  @override
  State<person_1> createState() => _person_1State();
}

class _person_1State extends State<person_1> {
  @override
    int _currentIndex = 0;
  
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
            actions: [
            IconButton(
                icon: const Icon(Icons.person),
                onPressed: () async {
                var user = FirebaseAuth.instance.currentUser;
                if (user != null) {
                    // 如果用戶已登入，則導航到 ProfileScreen
                    Navigator.push(
                    context,
                    MaterialPageRoute<ProfileScreen>(
                        builder: (context) => ProfileScreen(
                        appBar: AppBar(
                            title: const Text('User Profile'),
                        ),
                        actions: [
                            SignedOutAction((context) {
                            Navigator.of(context).pop();
                            })
                        ],
                        children: [
                            const Divider(),
                            Padding(
                            padding: const EdgeInsets.all(2),
                            child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.asset('./assets/IMG_8162.jpeg'),
                            ),
                            ),
                        ],
                        ),
                    ),
                    );
                } else {
                    // 如果用戶未登入，則顯示一個提示
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('請先登入')),
                    );
                }
                },
            )
            ],
            automaticallyImplyLeading: false,
        ),
        bottomNavigationBar: BottomNavigationWidget(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _navigateToPage(index, context);
          });
        },
        fixedHeight: 56.0,
      ),
      body: const person_2(),
    );
  }
}

void _navigateToPage(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/drawer');
        break;
      case 2:
        Navigator.pushNamed(context, '/cart');
        break;
      case 3:
        Navigator.pushNamed(context,'/person_1');
      // Add cases for other pages
    }
  }

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
    required this.currentIndex,
    required this.onTap,
    required this.fixedHeight,
  }) : super(key: key);
  final int currentIndex;
  final ValueChanged<int> onTap;
  final double fixedHeight;

  @override
Widget build(BuildContext context) {
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.photo_library),
        label: 'Shop',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add_shopping_cart),
        label: 'Shopping_cart',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Person',
        // activeIcon: 
      ),
    ],
    currentIndex: currentIndex,
    onTap: onTap,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
    );
  }
}

class person_2 extends StatelessWidget {
  const person_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Column(
            children: [
                const AuthGate(),
            ],
          ),
        );
  }
}

// class Login extends StatefulWidget {
//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   final GoogleSignIn googleSignIn = GoogleSignIn();
//   final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   late SharedPreferences preferences;
//   bool loading = false;
//   bool isLogedin = false;

//   @override
//   void initState() {
//     super.initState();
//     isSignedIn();
//   }

//    void isSignedIn() async{
//     setState((){
//       loading = true;
//     });

//     preferences = await SharedPreferences.getInstance();
//     isLogedin = await googleSignIn.isSignedIn();

//     if(isLogedin){
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home_title()));
//     }

//     setState((){
//       loading = false;
//     });
//    }

//    Future handleSignIn() async{
//     preferences = await SharedPreferences.getInstance();

//     setState((){
//       loading = true;
//     });

//     GoogleSignInAccount? googleUser = await googleSignIn.signIn();
//     GoogleSignInAuthentication googleSignInAuthentication =await googleUser!.authentication;
//     FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
//       idToken:googleSignInAuthentication.idToken,
//       accessToken:googleSignInAuthentication.accessToken);

//     if(firebaseUser != null){
//       final QuerySnapshot result = await Firestore.instance
//       .collection("users")
//       .where("id", isEqualTo: firebaseUser.uid)
//       .getDocuments();
//       final List<DocumentSnapshot> documents = result.documents;

//       if(documents.length == 0){
//         Firestore.instance
//           .collection('users')
//           .document(firebaseUser.uid)
//           .setData({
//             "id":firebaseUser.uid,
//             "username":firebaseUser.displayName,
//             "profilePicture":firebaseUser.photoUrl
//           });

//           await preferences.setString("id", firebaseUser.uid);
//           await preferences.setString("username", firebaseUser.displayName);
//           await preferences.setString("photoUrl", firebaseUser.displayName);
//       }else{
//           await preferences.setString("id", documents[0]["id"]);
//           await preferences.setString("username", documents[0]["username"]);
//           await preferences.setString("photoUrl", documents[0]["photoUrl"]);
//       }

//       Fluttertoast.showToast(msg: "Login was successful");
//       setState(() {
//         loading = false;
//       });
        // Navigator.pushReplacment(
        //   context, MaterialPageRoute(builder: (context) => home_title());
        // )
    
//     } else{
//       Fluttertoast.shotToast(msg:"Login failed :(");
// }
//    }
//   @override
//   Widget build(BuildContext context) {
        // double height = Mediaquery.of(context).size.height / 3;
    // return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Image.asset(
//             'images/back.jpg',
//             fit: BoxFit.fill,
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           Container(
//             color: Colors.black.withOpacity(0.8),
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           Container(
//               alignment: Alignment.topCenter,
//               child: Image.asset(
//                 'images/lg.png',
//                 width: 280.0,
//                 height: 240.0,
//               )),
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 200.0),
//               child: Center(
//                 child: Form(
//                     key: _formKey,
//                     child: ListView(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
//                           child: Material(
//                             borderRadius: BorderRadius.circular(10.0),
//                             color: Colors.white.withOpacity(0.4),
//                             elevation: 0.0,
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 12.0),
//                               child: TextFormField(
//                                 controller: _emailTextController,
//                                 decoration: InputDecoration(
//                                   hintText: "Email",
//                                   icon: Icon(Icons.alternate_email),
//                                 ),
//                                 validator: (value) {
//                                   if (value.isEmpty) {
//                                     Pattern pattern =
//                                         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//                                     RegExp regex = new RegExp(pattern);
//                                     if (!regex.hasMatch(value))
//                                       return 'Please make sure your email address is valid';
//                                     else
//                                       return null;
//                                   }
//                                 },
//                               ),
//                             ),
//                           ),
//                         ),

//                         Padding(
//                           padding:
//                               const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
//                           child: Material(
//                             borderRadius: BorderRadius.circular(10.0),
//                             color: Colors.white.withOpacity(0.4),
//                             elevation: 0.0,
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 12.0),
//                               child: TextFormField(
//                                 controller: _passwordTextController,
//                                 decoration: InputDecoration(
//                                   hintText: "Password",
//                                   icon: Icon(Icons.lock_outline),
//                                 ),
//                                 validator: (value) {
//                                   if (value.isEmpty) {
//                                     return "The password field cannot be empty";
//                                   } else if (value.length < 6) {
//                                     return "the password has to be at least 6 characters long";
//                                   }
//                                   return null;
//                                 },
//                               ),
//                             ),
//                           ),
//                         ),

//                         Padding(
//                           padding:
//                               const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
//                           child: Material(
//                               borderRadius: BorderRadius.circular(20.0),
//                               color: Colors.red.shade700,
//                               elevation: 0.0,
//                               child: MaterialButton(
//                                 onPressed: () {},
//                                 minWidth: MediaQuery.of(context).size.width,
//                                 child: Text(
//                                   "Login",
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20.0),
//                                 ),
//                               )),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             "Forgot password",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ),
// //                          Expanded(child: Container()),

//                         Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: InkWell(
//                                 onTap: (){
//                                   Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
//                                 },
//                                 child: Text("Sign up", textAlign: TextAlign.center, style: TextStyle(color: Colors.red),))
//                         ),
//                       ],
//                     )),
//               ),
//             ),
//           ),
//           Visibility(
//             visible: loading ?? true,
//             child: Center(
//               child: Container(
//                 alignment: Alignment.center,
//                 color: Colors.white.withOpacity(0.9),
//                 child: CircularProgressIndicator(
//                   valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }