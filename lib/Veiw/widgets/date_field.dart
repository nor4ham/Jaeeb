import 'package:flutter/material.dart';

class DateField extends StatelessWidget {
  final TextEditingController controller;

  DateField({required this.controller,super.key});

  @override
  Widget build(BuildContext context) {
   return  Directionality(
        textDirection: TextDirection.rtl,
      child: Padding(
              padding: EdgeInsets.only(top: 30),
        child: TextFormField(
          
                  controller: controller, //
                  obscureText: true,
                  style: TextStyle(
                    color: Color.fromRGBO(81, 152, 114, 1),
                    fontSize: 17,
                  ),
                  cursorColor: Color.fromRGBO(81, 152, 114, 1),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_today),
                    hintText: 'التاريخ',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
    
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  onTap: () async {
                    DateTime? pickeddate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101));
    
                  },
                ),
      ),
    );
  }
}