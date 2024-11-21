import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_flutter/components/text_input_field.dart';

const gapValue = 12.0;

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Center(
                      child: SvgPicture.asset('assets/app-logos/instagram-clone-logo.svg')),
                  ),
              Flexible(
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                         Column(
                           children: [
                             const TextInputField(
                                 label:'Username or email',
                             ),
                             const SizedBox(height: gapValue),
                             const TextInputField(
                                 label: 'Password',
                             ),
                             const SizedBox(height: gapValue),
                             SizedBox(
                               width: double.infinity,
                             child: FilledButton(onPressed: () => print('Login Clicked'), child: const Text('Login')),
                             ),
                       TextButton(onPressed: () => ('Forgot password'), child: const Text('Forgot password'))
                           ],
                         ),
                         Column(
                           children: [
                             OutlinedButton(onPressed: () => Navigator.pushNamed(context, '/signup'), child: const Text('Create new account')),
                             TextButton(onPressed: () => print('Clicked'),
                                 child: Text('canshecode.com',
                                 style: Theme.of(context).brightness==
                                 Brightness.dark
                                 ? const TextStyle(color: Colors.white54)
                                 : const TextStyle(color: Colors.black54)))
                           ],
                         )
                       ],
                     ),
                 ),

               )
                ],
              ),
          ),
    );
}
}