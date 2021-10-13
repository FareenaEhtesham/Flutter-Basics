import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Demo App"),
      ),
      // Contact Body
      body: Center(
        child: Column(
          children: [
            //Twitter
            Container(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () async {
                    final url = 'https:twitter.com';

                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                  child: const Text('Twitter'),
                  style:
                      ElevatedButton.styleFrom(fixedSize: const Size(240, 80)),
                ),
              ),
            ),
            // Phone Call
            Container(
                child: Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () async {
                  final phoneNumber = '0341-3892425';
                  final url = 'tel:$phoneNumber';

                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: const Text('Phone Call'),
                style: ElevatedButton.styleFrom(fixedSize: const Size(240, 80)),
              ),
            )),
            //SMS
            Container(
                child: Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () async {
                  final phoneNumber = '0341-3892425';
                  final url = 'sms:$phoneNumber';

                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: const Text('SMS'),
                style: ElevatedButton.styleFrom(fixedSize: const Size(240, 80)),
              ),
            )),
            //GMAIL
            Container(
              child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      final toEmail = 'fareena.ehtesham.230@gmail.com';
                      final subject = 'Queries';
                      final message = 'Hello Fareena\n Check this post';
                      final url =
                          'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';

                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                    child: const Text('Gmail'),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(240, 80)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
