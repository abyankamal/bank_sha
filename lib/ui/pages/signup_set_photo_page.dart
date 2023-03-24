import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignUpSetPhotoPage extends StatelessWidget {
  const SignUpSetPhotoPage({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(
                //   width: 120,
                //   height: 120,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: lightBackgroundColor 
                //   ),
                //   child: Center(
                //     child: Image.asset(
                //       'assets/ic_upload.png',
                //       width: 32,
                //     ),
                //   ),
                // ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img_profile.png'), 
                    )
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Syanha Hanna',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semibold
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFormsField(
                  title: 'Set PIN (6 Digits Number)'
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButtonFilled(
                  title: 'Continue',
                  onPressed: (){
                    Navigator.pushNamed(context, '/sign-up-set-ktp');
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}