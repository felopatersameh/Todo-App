import 'package:flutter/material.dart';import 'Widget/custom_items.dart';List<String> data = ["First", "second", "Third", "First", "second", "Third"];class AllTask extends StatelessWidget {  const AllTask({    super.key,  });  @override  Widget build(BuildContext context) {    return Scaffold(        appBar: AppBar(          backgroundColor: const Color(0xff9395D3),          title: const Text(            "TODO APP",            style: TextStyle(              color: Colors.white,              fontSize: 24,              fontWeight: FontWeight.w600,            ),          ),        ),        body: ListView.builder(          itemCount: data.length,          itemBuilder: (context, index) {            return CardItems(              title: data[index],            );          },        ));  }}