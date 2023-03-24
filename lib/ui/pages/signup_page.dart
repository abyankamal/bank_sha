import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
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
            'Join Us to Unlock\nYour Growth',
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
                  title: 'Fullname'
                ),
                const SizedBox(
                  height: 16,
                ),
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
                  height: 30,
                ),
                CustomButtonFilled(
                  title: 'Sign Up',
                  onPressed: (){
                    Navigator.pushNamedAndRemoveUntil(
                      context, 
                      '/sign-up-set-photo', 
                      (route) => false);
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextWidget(
            title: 'Sign In',
            onPressed: (){
              Navigator.pushNamed(context, '/sign-in');
            },
          )
        ],
      ),
    );
  }
}