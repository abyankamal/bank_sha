import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_overview.png',
                width: 20,
              ),
              label: 'Overview'
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_history.png',
                width: 20,
              ),
              label: 'History'
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_statistic.png',
                width: 20,
              ),
              label: 'Statistic'
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_reward.png',
                width: 20,
              ),
              label: 'Reward'
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: (){},
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24
        ),
        children: [
          buildProfile(),
          buildWalletCard()
        ],
      ),
    );
  }

  Widget buildProfile(){
    return Container(
      margin: EdgeInsets.only(
        top: 40.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,',
                style: greyTextStyle.copyWith(
                  fontSize: 16
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'shaynahan',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semibold
                ),
              )
            ],
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/img_profile.png') 
              )
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildWalletCard(){
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      padding: EdgeInsets.all(30),
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/img_bg_card.png')
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(
              'Shayna Hanna',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
            '**** **** **** 1280',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              letterSpacing: 6
            ),
          ),
          SizedBox(
            height: 21,
          ),
          Text(
            'Balance',
            style: whiteTextStyle,
          ),
          Text(
            'Rp 12.500',
            style: whiteTextStyle.copyWith(
              fontSize: 20,
              fontWeight: bold
            ),
          )
        ],
      ),
    );
  }
}


