import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropdownSearchPage extends StatelessWidget {
  const DropdownSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownSearch<String>(
          popupProps: PopupProps.menu(
            showSelectedItems: true,
            disabledItemFn: (String s) => s.startsWith('I'),
          ),
          items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
          onChanged: print,
          selectedItem: "Brazil",
        ),
      ),
    );
  }
}
