import 'package:flutter/material.dart';

/// Reusable Text Field
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

/// Reusable Dropdown for Gender
class GenderDropdown extends StatelessWidget {
  final String? selectedGender;
  final Function(String?) onChanged;

  const GenderDropdown({
    super.key,
    required this.selectedGender,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: DropdownButtonFormField<String>(
        decoration: const InputDecoration(
          labelText: 'Jenis Kelamin',
          border: OutlineInputBorder(),
        ),
        value: selectedGender,
        items: ['Laki - Laki', 'Perempuan']
            .map(
              (gender) => DropdownMenuItem(value: gender, child: Text(gender)),
            )
            .toList(),
        onChanged: onChanged,
      ),
    );
  }
}

/// Reusable Date Picker Text Field
class DatePickerField extends StatelessWidget {
  final TextEditingController controller;

  const DatePickerField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: TextFormField(
        controller: controller,
        readOnly: true,
        decoration: const InputDecoration(
          labelText: 'Tanggal Lahir',
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.calendar_today),
        ),
        onTap: () async {
          FocusScope.of(context).requestFocus(FocusNode());

          final DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime(2005, 1, 1),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );

          if (pickedDate != null) {
            controller.text =
                "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
          }
        },
      ),
    );
  }
}
