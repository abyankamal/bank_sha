import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24
        ),
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 22
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor
            ),
            child: Column(
              children: [
                  Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img_profile.png') 
                    )
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Syanha Hanna',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_edit_profile.png', 
                  title: 'Edit Profile',
                  onTap: () async {
                    if(await Navigator.pushNamed(context, '/pin') == true){
                      Navigator.pushNamed(context, '/profile-edit');
                    }
                  },
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_pin.png', 
                  title: 'My Pin',
                  onTap: () async {
                    if(await Navigator.pushNamed(context, '/pin') == true){
                      Navigator.pushNamed(context, '/profile-edit-pin');
                    }
                  },
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_wallet.png', 
                  title: 'Wallet Settings',
                  onTap: (){},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_reward.png', 
                  title: 'My Reward',
                  onTap: (){},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_help.png', 
                  title: 'Help Center',
                  onTap: (){},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_logout.png', 
                  title: 'Logout',
                  onTap: (){},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 87,
          ),
          CustomTextWidget(
            title: 'Report A Problem',
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}