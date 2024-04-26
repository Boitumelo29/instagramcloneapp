import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // created an Appbar with GeeksforGeeks written on it.
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'GeeksforGeeks',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                width: MediaQuery.of(context).size.width,
                height: 60,

                // elevated button created and given style
                // and decoration properties
                child: ElevatedButton(
                  // style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    setState(() {
                      isLoading = true;
                    });

                    // we had used future delayed to stop loading after
                    // 3 seconds and show text "submit" on the screen.
                    Future.delayed(const Duration(seconds: 3), () {
                      setState(() {
                        isLoading = false;
                      });
                    });
                  },
                  child: isLoading
                      ? const Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          // as elevated button gets clicked we will see text"Loading..."
                          // on the screen with circular progress indicator white in color.
                          //as loading gets stopped "Submit" will be displayed
                          children: [
                            Text(
                              'Loading...',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ],
                        )
                      : const Text('Submit'),
                ))
          ],
        ),
      ),
    );
  }
}
