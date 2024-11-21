import 'package:flutter/material.dart';
import 'package:instagram_clone_flutter/components/text_input_field.dart';

class EmailInputScreen extends StatelessWidget {
  const EmailInputScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
      child: Column(
        children: [
          const Text("What's your email"),
          const Text("Enter the email where you can be contacted. No one will see this on your profile"),
          const TextInputField(label: "Email"),
          SizedBox(
            width: double.infinity,
            child: FilledButton(onPressed: () => print('Clicked'),
                child: const Text('Next')),
          ),

        ],
      ),
      )),
    );
  }
}
