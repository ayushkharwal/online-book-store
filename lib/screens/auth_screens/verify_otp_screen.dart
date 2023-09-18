import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_book_store/screens/app.dart';
import 'package:online_book_store/utils/constants.dart';
import 'package:online_book_store/widget/custom_text_field.dart';
import 'package:pinput/pinput.dart';

class VerifyOtpScreen extends StatefulWidget {
  VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: darkPrimaryColor,
      body: Center(
        child: Padding(
          padding: horizontalPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Verify OTP',
                style: TextStyle(
                  color: Colors.grey.shade100,
                  fontSize: 50,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'Please enter the verication code we sent to your Phone Number.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 40),
              Pinput(
                controller: otpController,
                length: 4,
                onChanged: (value) {
                  if (otpController.text.length == 4) {
                    // verifyOtf();
                  }
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z]")),
                ],
                keyboardType: TextInputType.number,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                defaultPinTheme: PinTheme(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                  height: screenHeight * 0.09,
                  width: screenWidth * 0.18,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade700,
                      width: 1,
                    ),
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 50,
                width: screenWidth * 0.6,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AppScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Verify OTP',
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
