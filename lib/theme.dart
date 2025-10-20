

import 'package:flutter/material.dart';

class ThemeTest extends StatelessWidget {
  const ThemeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Glee'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/Glee ss.png',
              height: 150,width: 150,),
            Image.asset('asset/Untitled-2.png',

            height: 150,width: 150,),

            Text('Glee Restaurant',

            style:Theme.of(context).textTheme.displayMedium,

            ),

            SizedBox(height: 10),
            TextField(),
            SizedBox(height: 10,),
            TextField(),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Text('Faisal')),
          ],
        ),
      ),
    );
  }
}
