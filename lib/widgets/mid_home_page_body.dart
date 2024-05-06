import 'package:flutter/material.dart';
import 'package:foundations/design_system/tokens/colors.dart';

class MidHomePageBody extends StatelessWidget {
  final ButtonStyle categoryBtnStyle;
  final ButtonStyle recentTransactionBtn;
  final void Function()? categoriesBtnAction;
  final void Function()? recentTransactionBtnAction;

  const MidHomePageBody(
      {super.key,
      required this.categoryBtnStyle,
      required this.recentTransactionBtn,
      required this.categoriesBtnAction,
      required this.recentTransactionBtnAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16, left: 16),
      height: 104,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          color: BaseColors.brandPrimary,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
              style: categoryBtnStyle,
              onPressed: categoriesBtnAction,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                child: Text(
                  'Categories',
                  style: TextStyle(color: BaseColors.bgDarkGray, fontSize: 14),
                ),
              )),
          ElevatedButton(
              onPressed: recentTransactionBtnAction,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                child: Text(
                  'Recent Transaction',
                  style: TextStyle(
                    color: BaseColors.bgDarkGray,
                    fontSize: 14,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
