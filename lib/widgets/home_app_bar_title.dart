import 'package:flutter/material.dart';
import 'package:foundations/design_system/tokens/colors.dart';
import 'package:foundations/widgets/icon_header_container.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(right: 12),
          decoration: const BoxDecoration(
            color: BaseColors.bgWhite,
            image: DecorationImage(
              image: AssetImage('assets/image/user.png'),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: Text(
            'Store Name',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        IconHeaderContainer(
          configMargin: const EdgeInsets.only(right: 12),
          iconButton: IconButton(
              onPressed: () => print('press notification button'),
              icon: const Icon(Icons.notifications)),
        ),
        IconHeaderContainer(
          iconButton: IconButton(
              onPressed: () => print('press button more'),
              icon: const Icon(Icons.more_vert)),
        )
      ],
    );
  }
}
