import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0),
    child: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: Image.asset(
        "assets/usell.PNG",
        height: 30,
      ),
      actions: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.65,
          child: TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Colors.grey,
            autocorrect: false,
            decoration: InputDecoration(
              isDense: true,
              suffixIcon: SizedBox(
                width: 150,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('add button pressed');
                      },
                      icon: Icon(Icons.add),
                    ),
                    IconButton(
                      onPressed: () {
                        print('mic button pressed');
                      },
                      icon: Icon(Icons.mic),
                    ),
                    IconButton(
                      onPressed: () {
                        print('mic button pressed');
                      },
                      icon: Icon(Icons.mic),
                    ),
                  ],
                ),
              ),
              suffixIconConstraints:
                  const BoxConstraints(minWidth: 30, minHeight: 0),
              hintText: "Search",
              contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
