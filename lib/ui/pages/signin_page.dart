import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: EdgeInsets.only(
              top: 100,
              bottom: 100
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png') 
              ),
            ),
          ),
          Text(
            'Sign In\n & Grow Your Business',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: bold
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), 
              color: whiteColor
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOTE : EMAIL INPUT
                CustomFormsField(
                  title: 'Email Address'
                ),
                const SizedBox(
                  height: 16,
                ),
                // NOTE: PASSWORD INPUT
                CustomFormsField(
                  title: 'Password',
                  isObsecure: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                          onPressed: (){
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero
                          ),
                          child: Text(
                            'Forgot Password',
                            style: blueTextStyle,
                          ),
                        ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButtonFilled(
                  title: 'Sign In',
                  onPressed: (){},
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextWidget(
            title: 'Create New Account',
            onPressed: (){
              Navigator.pushNamed(context, '/sign-up');
            },
          )
        ],
      ),
    );
  }
}