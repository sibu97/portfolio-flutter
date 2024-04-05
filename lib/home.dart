import 'package:flutter/material.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(168, 0, 0, 0),
        appBar: AppBar(
          leading: PopupMenuButton(
              icon: const Icon(Icons.menu),
              color: Colors.black,
              itemBuilder: (context) => [
                    PopupMenuItem(
                        child: TextButton(
                            child: const Text(
                              'Projects',
                              style: TextStyle(color: Colors.amber),
                            ),
                            onPressed: () {})),
                    PopupMenuItem(
                        child: TextButton(
                            child: const Text(
                              'About',
                              style: TextStyle(color: Colors.amber),
                            ),
                            onPressed: () {}))
                  ]),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Color.fromARGB(255, 209, 181, 172),
                Color.fromARGB(255, 0, 0, 0),
              ])),
          child: SlidingSheet(
             
              color: Colors.white,
              shadowColor: Colors.black26,
              elevation: 12,
              maxWidth: 500,
              cornerRadius: 16,
              cornerRadiusOnFullscreen: 0.0,
              closeOnBackdropTap: true,
              closeOnBackButtonPressed: true,
              addTopViewPaddingOnFullscreen: true,
              isBackdropInteractable: true,
              border: Border.all(
                color: Colors.grey.shade300,
                width: 3,
              ),

              body: Center(
                child: Text('This widget is below the SlidingSheet'),
              ),
              builder: (context, state) {
                // This is the content of the sheet that will get
                // scrolled, if the content is bigger than the available
                // height of the sheet.
                return Container(
                  height: 780,
                  child: Center(
                    child: Text('This is the content of the sheet'),
                  ),
                );
              }
              ),
        ));
  }
}
