import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:sample_project/homescreen.dart';

enum MobileVerificationState{
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}


class Otppage extends StatefulWidget {
  @override
  _OtppageState createState() => _OtppageState();
}

class _OtppageState extends State<Otppage> {
  //OTP Code
  MobileVerificationState currentState = MobileVerificationState
      .SHOW_MOBILE_FORM_STATE;

//FireBase Authentication
  FirebaseAuth _auth = FirebaseAuth.instance;
  late String verificationId;
  bool showLoading = false;
  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) {
    setState(() {
      showLoading  = true;
    });
    try {
      final authCredential=_auth.signInWithCredential(phoneAuthCredential);
      setState(() {
        showLoading = false;
      });
      if(authCredential?.user != null){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      }
      
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });
      _scaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(e.message)));
    }
  }


  //Otp Validation:
  TextEditingController _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void Validate() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      _phoneController.text;
    } else {
      print('Form in Invalid');
    }
  }

  int start = 30;
  bool wait = false;
  String buttonname = "Send";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("OTP Page",
          style: TextStyle(fontSize: 18, color: Colors.white),),
        backgroundColor: Colors.black87,
      ),
      body: Form(
        key: _formKey,
        child: Scaffold(
          key: _scaffoldKey,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 10),
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    boxShadow: [BoxShadow(blurRadius: 05, color: Colors.black)],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _phoneController,
                    onSaved: (value) {},
                    validator: (value) {
                      if (value!.length == 0) {
                        return "Please Enter the Mobile No";
                      } else if (value.length < 10) {
                        return ("Enter 10 Digits Mobile No");
                      } else if (value.length > 10) {
                        return ("Mobile No is too Long");
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Enter the phone number",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black87),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 5),
                        child: Text("(+91)",
                          style: TextStyle(color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(top: 15, right: 15),
                        child: InkWell(
                          onTap: wait ? null : () async {
                            setState(() {
                              showLoading = true;
                            });
                            //Verify PhoneNumber
                            await _auth.verifyPhoneNumber(
                              phoneNumber: _phoneController.text,
                              verificationCompleted: (
                                  phoneAuthCredential) async {
                                setState(() {
                                  showLoading = false;
                                });
                                signInWithPhoneAuthCredential(phoneAuthCredential);

                              },

                              //Verification Failed
                              verificationFailed: (verificationFailed) async {
                                setState(() {
                                  showLoading = false;
                                });
                                _scaffoldKey.currentState!.showSnackBar(
                                    SnackBar(
                                        content: Text(verificationFailed.message)));
                              },
                              //Code Sent
                              codeSent: (verificationId, resendingToken) async {
                                setState(() {
                                  showLoading = false;
                                  currentState = MobileVerificationState.SHOW_OTP_FORM_STATE;
                                  this.verificationId = verificationId;
                                });
                              },
                              //CodeAutoRetrieval
                              codeAutoRetrievalTimeout: (
                                  verificationId) async {},
                            );
                            startTimer();
                            setState(() {
                              start = 30;
                              wait = true;
                              buttonname = "Resend";
                            });
                          },
                          child: Text(buttonname,
                            style: TextStyle(
                                color: wait ? Colors.grey : Colors.black,
                                fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width - 30,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 2,
                        color: Colors.black45,
                      ),
                    ),
                    Text("Enter 6 Digits OTP"),
                    Expanded(
                      child: Container(
                        height: 2,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              otpField(),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Send OTP again in ",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    TextSpan(text: " 00:$start",
                        style: TextStyle(fontSize: 20, color: Colors.black87)),
                    TextSpan(text: " sec",
                        style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 5),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: FlatButton(
                    onPressed: () async {
                      Validate();
                      PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider
                          .credential(
                          verificationId: verificationId,
                          smsCode: otpField()
                      );
                      signInWithPhoneAuthCredential(phoneAuthCredential);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Text(" OTP Verification",
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void startTimer() {
    const onsec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onsec, (timer) {
      if (start == 0) {
        setState(() {
          timer.cancel();
          wait = false;
        });
      } else {
        setState(() {
          start --;
        });
      }
    });
  }

  Widget otpField() {
    return OTPTextField(
      length: 5,
      width: MediaQuery
          .of(context)
          .size
          .width,
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldWidth: 55,
      otpFieldStyle: OtpFieldStyle(
        backgroundColor: Colors.grey,
        borderColor: Colors.black,
      ),
      fieldStyle: FieldStyle.box,
      outlineBorderRadius: 15,
      style: TextStyle(fontSize: 15, color: Colors.white),
      onChanged: (pin) {
        print("Changed: " + pin);
      },
      onCompleted: (pin) {
        print("Completed: " + pin);
      },
    );
  }
}

