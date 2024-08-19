import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

//text form for login page
class Customfield extends StatelessWidget {
  final String LabelText;
  final bool isObscureText;
  const Customfield(
      {super.key, required this.LabelText, this.isObscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: LabelText, labelStyle: const TextStyle(fontSize: 12)),
      obscureText: isObscureText,
    );
  }
}

//input flat
class InputFlat extends StatelessWidget {
  final String LabelText;
  const InputFlat({super.key, required this.LabelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: LabelText,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.orange.shade900)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red))),
    );
  }
}

//dropdown button
class DropdownbtnKapasitas extends StatefulWidget {
  const DropdownbtnKapasitas({super.key});

  @override
  State<DropdownbtnKapasitas> createState() => _DropdownbtnState();
}

class _DropdownbtnState extends State<DropdownbtnKapasitas> {
  String? selected;

  List<String> kapasitas = ['10mb', '20mb', '30mb'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
        child: DropdownButton2(
      hint: const Text(
        "Kapasitas",
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      items: kapasitas
          .map((e) => DropdownMenuItem(
              value: e,
              child: Text(
                e,
                style: const TextStyle(fontSize: 12),
              )))
          .toList(),
      value: selected,
      onChanged: (value) {
        setState(
          () {
            selected = value;
          },
        );
      },
      buttonStyleData: ButtonStyleData(
        decoration: BoxDecoration(
            color: Colors.orange.shade700,
            borderRadius: BorderRadius.circular(10)),
        overlayColor: const WidgetStatePropertyAll(Colors.orange),
      ),
    ));
  }
}

//dropdown perangkat tambahan
class DropdownTambahan extends StatefulWidget {
  const DropdownTambahan({super.key});

  @override
  State<DropdownTambahan> createState() => _DropdownTambahanState();
}

class _DropdownTambahanState extends State<DropdownTambahan> {
  String? selected;

  List<String> tambahan = ['Access point', 'Router'];
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        hint: const Text(
          "Perangkat Tambahan",
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        items: tambahan
            .map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style: const TextStyle(fontSize: 12),
                )))
            .toList(),
        value: selected,
        onChanged: (value) {
          setState(() {
            selected = value;
          });
        },
        buttonStyleData: ButtonStyleData(
          decoration: BoxDecoration(
              color: Colors.orange.shade700,
              borderRadius: BorderRadius.circular(10)),
          overlayColor: const WidgetStatePropertyAll(Colors.brown),
        ),
      ),
    );
  }
}

//button tambah
class ButtonTambah extends StatelessWidget {
  final String textbtn;
  const ButtonTambah({super.key, required this.textbtn});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(Color.fromARGB(255, 243, 97, 39))),
        child: Text(
          textbtn,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}
