import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/grid_ view.dart';
import '../constants/colors.dart';
import '../model/fashion.dart';
import '../provider/fashion_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Fashion> fashionList =
        Provider.of<FashionData>(context, listen: false).fashionList;

    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Recommended',
                style: TextStyle(
                  color: orangeVariant,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('New Models'),
              Text('Recent 2022 Shows')
            ],
          ),
          Expanded(
            child: GridViewComponent(fashionList: fashionList),
          ),
        ],
      ),
    );
  }
}
