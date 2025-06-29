import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEECCB), // Light orange background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Food Delivery Icon and Text
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Placeholder for the image. In a real app, you'd use Image.asset or Image.network
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.fastfood, size: 60, color: Colors.orange),
                            SizedBox(height: 8),
                            Text(
                              'FOOD DELIVERY',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),

              // Continue with Email Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Button background color
                    foregroundColor: Colors.white, // Text color
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {
                    // Handle continue with email
                  },
                  child: const Text(
                    'Continue with Email',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Continue with Google Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white, // Button background color
                    foregroundColor: Colors.black87, // Text color
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    side: const BorderSide(color: Colors.grey), // Border color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {
                    // Handle continue with Google
                  },
                  child: const Text(
                    'Continue with Google',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Continue as Guest Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white, // Button background color
                    foregroundColor: Colors.black87, // Text color
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    side: const BorderSide(color: Colors.grey), // Border color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {
                    // Handle continue as guest
                  },
                  child: const Text(
                    'Continue as Guest',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Terms and Privacy Policy
              Text(
                'By continuing, you agree to our Terms of Service and\nPrivacy Policy.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 20), // Spacer for bottom
            ],
          ),
        ),
      ),
    );
  }
}
