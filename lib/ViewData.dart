import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:zero_hunger/DialogFlow.dart';
import 'package:zero_hunger/SelfDonation.dart';
import 'package:zero_hunger/SocialPosts.dart';

class ViewData extends StatefulWidget {
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Past Donations'),
            InkWell(
              child: Icon(Icons.help),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DialogFlow()),
                );
              },
            ),
          ],
        ),
      ),
      body: StreamBuilder(
        stream: readUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Something Went wrong${snapshot.error}');
          } else if (snapshot.hasData) {
            final users = snapshot.data!;
            return ListView(
              children: users.map(buildUser).toList(),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

Widget buildUser(User user) {
  var val = user.reward;
  String address = user.address;

  return Container(
    height: 200,
    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
    decoration: BoxDecoration(
      color: Colors.blue[200],
      borderRadius: BorderRadius.circular(10),
      border: Border.all(),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: ListTile(
        title: Text(
          user.name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Reward: ${user.reward}",
              style: TextStyle(
                  color: val == '0' ? Colors.red : Colors.green, fontSize: 20),
            ),
            Text(address.split(',')[0].toString())
          ],
        )),
  );
}

class PastDonation extends StatelessWidget {
  const PastDonation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Past Donations'),
            InkWell(
              child: Icon(Icons.help),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DialogFlow()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SocialPosts()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.view_in_ar_outlined,
                      color: Colors.white,
                    ),
                    Text('Social Post')
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewData()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.people,
                      color: Colors.white,
                    ),
                    Text('Inspire From Others')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
