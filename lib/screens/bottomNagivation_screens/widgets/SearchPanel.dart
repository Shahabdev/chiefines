import 'package:flutter/material.dart';

import 'bottomSheet.dart';

class SearchPanel extends StatefulWidget {
  const SearchPanel({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchPanel> createState() => _SearchPanelState();
}

class _SearchPanelState extends State<SearchPanel> {
  double currentvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: TextField(
          onTap: () {
            showSearch(context: context, delegate: DataSearch());
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(15),
            filled: true,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                'assets/icons/search.png',
                scale: 4,
                color: const Color.fromARGB(255, 59, 59, 59),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(60),
            ),
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey[600], fontSize: 18),
            alignLabelWithHint: false,
          ),
          keyboardType: TextInputType.multiline,
          textInputAction: TextInputAction.done),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final fooddata = [
    'PanCake',
    'Samosa Chat',
    'salad',
    'Mix Vag',
    'Panner',
    'Samosa Chat',
    'salad',
    'Mix Vag',
  ];
  final recentView = ['PanCake', 'Samosa Chat', 'salad', 'Mix Vag'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear, color: Colors.grey[800]),
        onPressed: () {
          query = '';
        },
      ),
      GestureDetector(
        onTap: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              context: context,
              builder: (context) => const ReusableBottomSheet());
        },
        child: Image.asset(
          'assets/icons/filter2.png',
          color: Colors.grey[800],
          scale: 3.6,
        ),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null.toString());
        },
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow,
            color: Colors.grey[800],
            progress: transitionAnimation));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const ListTile(title: Text('Item not Found!'));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentView
        : fooddata.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {},
        leading: const Icon(Icons.access_time),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: const TextStyle(color: Colors.grey))
            ])),
        trailing: const Icon(Icons.north_west),
      ),
      itemCount: suggestionList.length,
    );
  }
}
