import 'package:flutter/material.dart';import 'Widget/custom_items.dart';List<String> completedData = ["First", "second", "Third"];class CompletedScreen extends StatelessWidget {  const CompletedScreen({super.key});  @override  Widget build(BuildContext context) {    return Scaffold(      backgroundColor: const Color(0xffD6D7EF),      appBar: AppBar(        backgroundColor: const Color(0xff9395D3),        title: const Text(          "Completed Task",          style: TextStyle(            color: Colors.white,            fontSize: 24,            fontWeight: FontWeight.w600,          ),        ),      ),      body: ListView.builder(        itemCount: completedData.length,        itemBuilder: (context, index) {          return CardItems(            title: completedData[index],          );        },      ),    );  }}