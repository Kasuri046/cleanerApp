import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PracticeDart extends StatefulWidget {
  const PracticeDart({super.key});

  @override
  State<PracticeDart> createState() => _PracticeDartState();
}

class _PracticeDartState extends State<PracticeDart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Slidable(
            endActionPane: ActionPane(
              motion: StretchMotion(),
              children: [
                // First Action
                SlidableAction(
                  onPressed: (context) {
                    // Handle action
                  },
                  backgroundColor: Colors.orange,
                  icon: Icons.warning,
                  label: 'Warning', // Optionally add a label
                ),
                // Second Action
                SlidableAction(
                  onPressed: (context) {
                    // Handle action
                  },
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                  label: 'Delete', // Optionally add a label
                ),
              ],
            ),
            child: ListTile(
              title: Text('Hammad Kasuri'),
              subtitle: Text('aaaaaaaaaaaaaaaaaaaaaaaaa'),
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.notifications), label: 'Notifications'),
          NavigationDestination(icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
        // selectedIndex: currentPageIndex,
        // onDestinationSelected: (int index){
        //   setState(() {
        //     currentPageIndex = index;
        //   });
        // },
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
  }
}
