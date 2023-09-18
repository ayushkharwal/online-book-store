import 'package:flutter/material.dart';
import 'package:online_book_store/screens/auth_screens/verify_otp_screen.dart';
import 'package:online_book_store/utils/constants.dart';
import 'package:online_book_store/widget/custom_text_field.dart';

class SignupLoginScreen extends StatefulWidget {
  const SignupLoginScreen({super.key});

  @override
  State<SignupLoginScreen> createState() => _SignupLoginScreenState();
}

class _SignupLoginScreenState extends State<SignupLoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff2A2A2A),
      body: Padding(
        padding: horizontalPadding,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Novelty',
                style: TextStyle(
                  color: Colors.grey.shade200,
                  fontSize: 50,
                  fontWeight: FontWeight.w200,
                ),
              ),
              const SizedBox(height: 50),
              CustomTextField(
                labelText: 'Your Name',
                controller: nameController,
                counterText: '',
                textCapitalization: TextCapitalization.words,
                maxLength: 30,
                enteredTextColor: Colors.white,
                floatingLabelStyleColor: Colors.white,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                labelText: 'Your Phone No.',
                controller: phoneNoController,
                maxLength: 10,
                keyboardType: TextInputType.number,
                enteredTextColor: Colors.white,
                floatingLabelStyleColor: Colors.white,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: screenWidth * 0.6,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VerifyOtpScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Signup or Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
