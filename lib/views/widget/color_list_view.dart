import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentColorIndex = 0;
  List<Color> colors = const [
    Color.fromARGB(255, 64, 224, 208),
    Color.fromARGB(255, 0, 60, 100),
    Color.fromARGB(255, 0, 158, 115),
    Color.fromARGB(255, 255, 127, 80),
    Color.fromARGB(255, 255, 218, 185),
    Color.fromARGB(255, 255, 192, 203),
    Color.fromARGB(255, 255, 165, 0),
    Color.fromARGB(255, 148, 0, 211),
    Color.fromARGB(255, 154, 205, 50),
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 250, 240, 230),
    Color.fromARGB(255, 245, 245, 220),
    Color.fromARGB(255, 128, 128, 128),
    Color.fromARGB(255, 255, 215, 0),
    Color.fromARGB(255, 192, 192, 192),
    Color.fromARGB(255, 184, 115, 51),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 68,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: colors.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                currentColorIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {});
              },
              child: ColorPicker(
                color: colors[index],
                selectedColor: currentColorIndex == index,
              ),
            );
          },
        ),
      ),
    );
  }
}

class ColorPicker extends StatelessWidget {
  const ColorPicker(
      {super.key, required this.selectedColor, required this.color});

  final bool selectedColor;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: selectedColor
          ? CircleAvatar(
              radius: 34,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: color,
              ),
            )
          : CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
    );
  }
}
