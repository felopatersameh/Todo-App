import 'package:flutter/material.dart';import 'package:todo/completed_screen.dart';import 'add_screen.dart';import 'edit_screen.dart';List<String> data = ["First", "second", "Third", "First", "second", "Third"];class MyHomePage extends StatefulWidget {  const MyHomePage({super.key});  @override  State<MyHomePage> createState() => _MyHomePageState();}class _MyHomePageState extends State<MyHomePage> {  @override  Widget build(BuildContext context) {    return Scaffold(      backgroundColor: const Color(0xffD6D7EF),      appBar: AppBar(        backgroundColor: const Color(0xff9395D3),        title: const Text(          "TODO APP",          style: TextStyle(            color: Colors.white,            fontSize: 24,            fontWeight: FontWeight.w600,          ),        ),      ),      body: ListView.builder(        itemCount: data.length,        itemBuilder: (context, index) {          return CardItems(            title: data[index],          );        },      ),      floatingActionButton: const BuildFloatingActionButton(),      bottomNavigationBar: const BuildBottomNavigationBar(),    );  }}//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////class BuildBottomNavigationBar extends StatefulWidget {  const BuildBottomNavigationBar({    super.key,  });  @override  State<BuildBottomNavigationBar> createState() =>      _BuildBottomNavigationBarState();}int index = 0;class _BuildBottomNavigationBarState extends State<BuildBottomNavigationBar> {  @override  Widget build(BuildContext context) {    return BottomNavigationBar(      items: const [        BottomNavigationBarItem(icon: Icon(Icons.menu_sharp), label: "All"),        BottomNavigationBarItem(            icon: Icon(Icons.check_rounded), label: "Completed"),      ],      onTap: (newIndex) {        setState(() {          index = newIndex;        });      },      currentIndex: index,    );  }}/////////////////////////////////////////////////////////////////class BuildFloatingActionButton extends StatelessWidget {  const BuildFloatingActionButton({    super.key,  });  @override  Widget build(BuildContext context) {    return Container(      clipBehavior: Clip.antiAliasWithSaveLayer,      decoration:          const BoxDecoration(shape: BoxShape.circle, color: Color(0xff9395D3)),      child: IconButton(        padding: const EdgeInsets.all(15),        color: Colors.white,        onPressed: () {          Navigator.push(              context,              MaterialPageRoute(                builder: (context) => const AddScreen(),              ));        },        icon: const Icon(Icons.add),      ),    );  }}/////////////////////////////////////////////////////////////////class CardItems extends StatelessWidget {  final String title;  const CardItems({    super.key,    required this.title,  });  @override  Widget build(BuildContext context) {    return Padding(      padding: const EdgeInsets.only(top: 10),      child: Card(        elevation: 5,        child:            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [          Padding(            padding: const EdgeInsets.all(10.0),            child: Column(              crossAxisAlignment: CrossAxisAlignment.start,              mainAxisAlignment: MainAxisAlignment.spaceEvenly,              children: [                Text(                  title,                  style: const TextStyle(                    fontSize: 13,                    fontWeight: FontWeight.w600,                    color: Color(0xff9395D3),                  ),                ),                const Text(                  "TODO SUB TITLE",                  style: TextStyle(                    fontSize: 10,                    fontWeight: FontWeight.w400,                  ),                ),              ],            ),          ),          Row(            mainAxisAlignment: MainAxisAlignment.spaceAround,            children: [              IconButton(                iconSize: 20,                onPressed: () {                  Navigator.push(                      context,                      MaterialPageRoute(                        builder: (context) => const EditScreen(),                      ));                },                icon: const Icon(Icons.edit),              ),              IconButton(                iconSize: 20,                onPressed: () {},                icon: const Icon(Icons.delete_rounded),              ),              IconButton(                iconSize: 20,                onPressed: () {                  Navigator.push(                      context,                      MaterialPageRoute(                        builder: (context) => const CompletedScreen(),                      ));                },                icon: const Icon(Icons.check_circle_outline),              ),            ],          )        ]),      ),    );  }}