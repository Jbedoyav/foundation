import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foundations/design_system/tokens/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 97,
        backgroundColor: BaseColors.brandPrimaryMat,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(16, 45, 16, 12),
          child: Row(
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
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: BaseColors.brandPrimary,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
              Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.only(left: 5),
                decoration: const BoxDecoration(
                  color: BaseColors.brandPrimary,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text('Hola'),
      ),
    );
  }
}
