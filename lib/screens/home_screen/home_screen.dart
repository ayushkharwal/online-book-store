import 'package:flutter/material.dart';
import 'package:online_book_store/utils/constants.dart';
import 'package:online_book_store/widget/custom_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      resizeToAvoidBottomInset: false,
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopText(),
            const SizedBox(height: 20),
            CustomTextField(
              labelText: 'Search',
              controller: searchController,
              focusedBorderColor: Colors.black,
              floatingLabelStyleColor: Colors.black,
              suffixIcon: const Icon(Icons.search_rounded),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Best Seller',
                  style: TextStyle(fontSize: 18),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: appBarColor,
      elevation: 0,
      leading: Builder(
        builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu_rounded,
              color: darkPrimaryColor,
            ),
          );
        },
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_outlined,
            size: 30,
          ),
        ),
      ],
    );
  }
}

class TopText extends StatelessWidget {
  const TopText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Hey There, Ayush!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
            ),
          ),
          TextSpan(
            text: '\nKeep reading, you\'ll fall in love',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
