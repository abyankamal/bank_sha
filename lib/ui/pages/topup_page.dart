import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/bank_item.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Top Up',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_bg_card.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Angga Risky',
                    style: greyTextStyle.copyWith(
                      fontSize: 12
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          BankItem(
            imageUrl: 'assets/img_bank_bca.png', 
            title: 'Bank BCA',
            isSelected: true,
          ),
          BankItem(
            imageUrl: 'assets/img_bank_bni.png', 
            title: 'Bank BNI'
          ),
          BankItem(
            imageUrl: 'assets/img_bank_mandiri.png', 
            title: 'Bank MANDIRI'
          ),
          BankItem(
            imageUrl: 'assets/img_bank_ocbc.png', 
            title: 'Bank OCBC'
          ),
        ],
      ),
    );
  }
}