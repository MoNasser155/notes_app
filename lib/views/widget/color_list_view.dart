import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentColorIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 68,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: kColors.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                currentColorIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                setState(() {});
              },
              child: ColorPicker(
                color: kColors[index],
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
