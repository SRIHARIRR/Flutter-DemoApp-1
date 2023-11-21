import 'package:demo_project/class/item_class.dart';
import 'package:demo_project/core/constant.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});
  final ItemClass box;
  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double customtextsize = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Snackbar'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kdouble10),
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              Wrap(
                spacing: kdouble10,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        customtextsize = 25;
                      });
                    },
                    child: const Text('Small Text'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        customtextsize = 50;
                      });
                    },
                    child: const Text('Medium Text'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        customtextsize = 75;
                      });
                    },
                    child: const Text('Large Text'),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        customtextsize = 100;
                      });
                    },
                    child: const Text('Huge Text'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                      fontSize: customtextsize, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                baconDescription,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: kdouble10,
              ),
              const Text(
                baconDescription,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
