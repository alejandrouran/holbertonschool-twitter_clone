import 'package:flutter/material.dart';
import 'package:twitter/widgets/bar_menu.dart';
import 'package:twitter/widgets/users_search_results_widget.dart';
import 'package:twitter/assets/search_dummy_data.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _searchController;

  var searchIcon = const Icon(
    Icons.settings,
    color: Colors.lightBlue,
  );

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.blue),
                borderRadius: BorderRadius.circular(30),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    if (searchIcon.icon == Icons.settings) {
                      searchIcon = const Icon(
                        Icons.close,
                        color: Colors.lightBlue,
                      );
                    } else {
                      searchIcon = const Icon(
                        Icons.settings,
                        color: Colors.lightBlue,
                      );
                    }
                  });
                },
                icon: searchIcon,
              ),
            ),
          ),
        ),
      ),
      body: ListView(children: createUserList(userList)),
      bottomNavigationBar: const BottomBarMenu(),
    );
  }

  List<UsersSearchResultsWidget> createUserList(List<dynamic> userList) {
    List<UsersSearchResultsWidget> userWidgetList = [];

    for (Map<String, dynamic> user in userList) {
      userWidgetList.add(UsersSearchResultsWidget(
          name: user['name'],
          username: user['username'],
          bio: user['bio'],
          imgUrl: user['imgUrl'],
          isVerified: user['isVerified']));
    }

    return userWidgetList;
  }
}