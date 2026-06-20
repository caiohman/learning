import 'package:flutter/material.dart';

class PersonCard extends StatefulWidget {
  const PersonCard({super.key});

  @override
  State<PersonCard> createState() => _PersonCardState();
}

class _PersonCardState extends State<PersonCard> {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () { setState(() {
	  });
	},
        child: Padding (
	  padding: const EdgeInsets.all(16.0),	
	  child: Text('Name'),
	),
      ),
    );
  }
}



