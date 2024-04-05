import 'package:flutter/material.dart';
import 'package:jfs/CommonWidgets/enum.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({super.key});



  @override
  Widget build(BuildContext context) {
    DateTime? date;
    return SizedBox(
        width: 500,
        child: TextFormField(
          textAlign: TextAlign.center,
          readOnly: true,
          onTap: () async {
            date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2024),
              lastDate: DateTime(2025),
              //selectableDayPredicate: _decideWhichDayToEnablestart,
            );
            // participantFormController.startDateValidation = pickedDate1;
            // participantFormController.startDate.value = DateFormat('dd-MM-yyyy').format(pickedDate1!).toString();
            // participantFormController.startDatedate = int.parse(DateFormat('dd').format(pickedDate1!));
            // participantFormController.startDatemonth = int.parse(DateFormat('MM').format(pickedDate1!) );
            // participantFormController.startDateyear = int.parse(DateFormat('yyyy').format(pickedDate1!) );
          },
          decoration: InputDecoration(
            hintText: getCurrentDate(),
            hintStyle:
                manropeDefault.copyWith(color: Colors.black, fontSize: 16),
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),

            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
        ));
  }

  getCurrentDate() {
    var date = DateTime.now().toString();

    var dateParse = DateTime.parse(date);

    var formattedDate = "${dateParse.day}-${dateParse.month}-${dateParse.year}";

    return formattedDate;
  }
}
