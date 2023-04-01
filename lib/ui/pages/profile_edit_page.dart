import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile'
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24
        ),
        children: [
          const SizedBox(
            height: 40,
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
                CustomFormsField(
                  title: 'Username'
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormsField(
                  title: 'Fullname'
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormsField(
                  title: 'Email Address'
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormsField(
                  title: 'Password',
                  isObsecure: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButtonFilled(
                  title: 'Update Now',
                  onPressed: (){
                    Navigator.pushNamedAndRemoveUntil(
                      context, 
                      '/profile-edit-success', 
                      (route) => false);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}