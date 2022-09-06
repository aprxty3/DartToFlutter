import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropdownSearchPage extends StatelessWidget {
  const DropdownSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: DropdownSearch<String>(
            clearButtonProps: ClearButtonProps(
              isVisible: true,
            ),
            popupProps: PopupProps.menu(
              showSearchBox: true,
              showSelectedItems: true,
              disabledItemFn: (String s) => s.startsWith('I'),
            ),
            items: [
              "Brazil",
              "Italia (Disabled)",
              "Tunisia",
              'Canada',
              'Indonesia'
            ],
            onChanged: print,
            selectedItem: "Brazil",
          ),
        ),
      ),
    );
  }
}
