import 'package:flutter/material.dart';

import 'constant.dart';
import 'new_card_skeletons.dart';
import 'new_cards.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Shimmer Loading Effects",
          style: TextStyle(color: Colors.black),
        ),centerTitle: true,
      ),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child:  _isLoading
            ? ListView.separated(
                itemCount: 5,
                itemBuilder: (context, index) => const NewsCardSkelton(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: defaultPadding),
              )
            : ListView.separated(
                itemCount: 6,
                itemBuilder: (context, index) => NewsCard(
                  image: "assets/images/Image_$index.png",
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: defaultPadding),
              ),
    ),
    );
  }
}