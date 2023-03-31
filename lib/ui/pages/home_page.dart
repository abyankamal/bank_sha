import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/home_latest_transactions_item.dart';
import 'package:bank_sha/ui/widgets/home_services_item.dart';
import 'package:bank_sha/ui/widgets/home_tips_item.dart';
import 'package:bank_sha/ui/widgets/home_users_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(),
          buildTransactions(),
          buildSendAgain(),
          buildFriendlyTips()
        ],
      ),
    );
  }

  Widget buildProfile(BuildContext context){
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
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
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

  Widget buildLevel(){
    return Container(
      margin: EdgeInsets.only(
        top: 20
      ),
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor
        ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style: blackTextStyle.copyWith(
                  fontSize: 14
                ),
              ),
              const Spacer(),
              Text(
                '55% ',
                style: greenTextStyle.copyWith(
                  fontWeight: semibold
                )
              ),
              Text(
                'of Rp 20.000',
                style: blackTextStyle.copyWith(
                  fontWeight: semibold
                )
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              minHeight: 5,
              value: 0.55,
              backgroundColor: lightBackgroundColor,
              valueColor: AlwaysStoppedAnimation(greenColor),
            ),
          )
        ],
      )
    );
  }

  Widget buildServices(){
    return Container(
      margin: const EdgeInsets.only(
        top: 30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(
              fontWeight: semibold
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServicesItem(
                iconUrl: 'assets/ic_topup.png',
                title: 'Top Up',
                onTap: (){},
              ),
              HomeServicesItem(
                iconUrl: 'assets/ic_send.png',
                title: 'Send',
                onTap: (){},
              ),
              HomeServicesItem(
                iconUrl: 'assets/ic_withdraw.png',
                title: 'Withdraw',
                onTap: (){},
              ),
              HomeServicesItem(
                iconUrl: 'assets/ic_more.png',
                title: 'More',
                onTap: (){},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildTransactions(){
    return Container(
      margin: const EdgeInsets.only(
        top: 30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transaction',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 14
            ),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                HomeLatestTransactionsItem(
                  iconUrl: 'assets/ic_transaction_cat1.png', 
                  title: 'Top Up', 
                  time: 'Yesterday', 
                  value: '+ 450.000'
                ),
                HomeLatestTransactionsItem(
                  iconUrl: 'assets/ic_transaction_cat2.png', 
                  title: 'Cashback', 
                  time: 'Sep 11', 
                  value: '+ 22.000'
                ),
                HomeLatestTransactionsItem(
                  iconUrl: 'assets/ic_transaction_cat3.png', 
                  title: 'Withdraw', 
                  time: 'Sep 2', 
                  value: '- 5.000'
                ),
                HomeLatestTransactionsItem(
                  iconUrl: 'assets/ic_transaction_cat4.png', 
                  title: 'Transfer', 
                  time: 'Aug 27', 
                  value: '- 123.500'
                ),
                HomeLatestTransactionsItem(
                  iconUrl: 'assets/ic_transaction_cat5.png', 
                  title: 'Electric', 
                  time: 'Feb 18', 
                  value: '- 12.350.000'
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildSendAgain(){
    return Container(
      margin: const EdgeInsets.only(
        top: 30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeUsersItem(
                  imageUrl: 'assets/img_friend1.png', 
                  username: 'yuanita'
                ),
                HomeUsersItem(
                  imageUrl: 'assets/img_friend2.png', 
                  username: 'jani'
                ),
                HomeUsersItem(
                  imageUrl: 'assets/img_friend3.png', 
                  username: 'urip'
                ),
                HomeUsersItem(
                  imageUrl: 'assets/img_friend4.png', 
                  username: 'masa'
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFriendlyTips(){
    return Container(
      margin: const EdgeInsets.only(
        top: 30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friendly Tips',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold
            ),
          ),
          const SizedBox(
            height: 14
          ),
          Center(
            child: Wrap(
              spacing: 17,
              runSpacing: 18,
              children: [
              HomeTipsItem(
              imageUrl: 'assets/img_tips1.png', 
              title: 'Best tips for using a credit card', 
              url: 'https://www.google.com/'
              ),
              HomeTipsItem(
              imageUrl: 'assets/img_tips2.png', 
              title: 'Spot the good pie of finance model', 
              url: 'https://www.pub.dev/'
              ),
              HomeTipsItem(
              imageUrl: 'assets/img_tips3.png', 
              title: 'Great hack to get better advice', 
              url: 'https://www.youtube.com/'
              ),
              HomeTipsItem(
              imageUrl: 'assets/img_tips4.png', 
              title: 'Some more penny buy this instead', 
              url: 'https://www.facebook.com/'
              ),
              ],
            ),
          )
        ],
      ),
    );
  }
}



