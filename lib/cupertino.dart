import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assignment13 extends StatefulWidget {
  const Assignment13({Key? key}) : super(key: key);

  @override
  _Assignment13State createState() => _Assignment13State();
}

class _Assignment13State extends State<Assignment13> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CupertinoNavigationBar(
            leading: Icon(Icons.menu),
            middle: Text(
              "Cupertino",
              style: TextStyle(fontSize: 20),
            ),
            trailing: Icon(Icons.person),
            backgroundColor: CupertinoColors.separator,
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: CupertinoButton(
                      color: CupertinoColors.destructiveRed,
                      child: const Text('Button'),
                      onPressed: () {},
                    ),
                  ),
                  CupertinoButton.filled(
                    alignment: Alignment.center,
                    //change opacity on click by default is 0.4
                    pressedOpacity: 1,
                    padding: const EdgeInsets.all(0),

                    disabledColor: Colors.pinkAccent,
                    child: const Text('Clcik Me '),
                    onPressed: () {
                      showCupertinoDialog<void>(
                        context: context,
                        builder: (BuildContext context) => CupertinoAlertDialog(
                          title: const Text('Alert !!'),
                          content: const Text('This is Alert dialog box'),
                          actions: <CupertinoDialogAction>[
                            CupertinoDialogAction(
                              child: const Text('No'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            CupertinoDialogAction(
                              child: const Text('Yes'),
                              isDestructiveAction: true,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  CupertinoButton(
                    onPressed: () {
                      showCupertinoModalPopup<void>(
                        context: context,
                        builder: (BuildContext context) => CupertinoActionSheet(
                          title: const Text('ILDC'),
                          message: const Text('ILDC'),
                          actions: <CupertinoActionSheetAction>[
                            CupertinoActionSheetAction(
                              child: const Text('Yes'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            CupertinoActionSheetAction(
                              child: const Text('No'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ),
                      );
                    },
                    child: const Text('CupertinoActionSheet'),
                  ),
                   SizedBox(
                width: 100,
                height: 100,
                child: CupertinoContextMenu(
                  child: Container(
                    color: CupertinoColors.activeGreen,
                  ),
                  actions: <Widget>[
                    CupertinoContextMenuAction(
                      child: const Text('Action one'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoContextMenuAction(
                      child: const Text('Action two'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              )
                ],
              ),
             
            ],
          ),
        ],
      ),
    );
  }
}
