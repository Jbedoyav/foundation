import 'package:flutter/material.dart';
import 'package:foundations/design_system/tokens/colors.dart';
import 'package:foundations/design_system/tokens/radius.dart';
import 'package:foundations/widgets/custom_money_display.dart';
import 'package:foundations/widgets/home_app_bar_title.dart';
import 'package:foundations/widgets/summary_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 97,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: BaseRadius.small,
            bottomRight: BaseRadius.small,
          ),
        ),
        backgroundColor: BaseColors.brandPrimaryMat,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(8, 30, 8, 20),
          child: HomeAppBarTitle(),
        ),
      ),
      body: const Column(
        children: [
          TopHomePageBody(),
          MidHomePageBody(),
          Expanded(child: BottomHomePageBody())
        ],
      ),
    );
  }
}

class TopHomePageBody extends StatelessWidget {
  const TopHomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      transform: Matrix4.translationValues(0, -12, 0),
      decoration: const BoxDecoration(
          color: BaseColors.scale02,
          borderRadius: BorderRadius.only(
            bottomLeft: BaseRadius.small,
            bottomRight: BaseRadius.small,
          )),
      height: 389,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 56),
            child: Text(
              'Your Budget',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          CustomMoneyDisplay(
            amount: 2868000.12,
            padding: const EdgeInsets.only(top: 8, right: 4),
            amountStyle: Theme.of(context).textTheme.displayLarge!,
            amountStyleSmall: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: BaseColors.bGBlack,
            ),
          ),
          SummaryCard(
            typeSummaryCard: TypeSummaryCard.income,
            amount: 700000,
            period: 'From January 1 to January 31 ',
            action: () => print('spending'),
          ),
          SummaryCard(
            typeSummaryCard: TypeSummaryCard.spend,
            amount: 90000,
            period: 'From January 1 to January 31 ',
            action: () => print('spending'),
          ),
        ],
      ),
    );
  }
}

class MidHomePageBody extends StatelessWidget {
  const MidHomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BottomHomePageBody extends StatelessWidget {
  const BottomHomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
