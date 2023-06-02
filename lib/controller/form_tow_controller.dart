import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FormTowController extends GetxController{
  List<List<String>> tableData = List.generate(
    4, (rowIndex) => List.generate(
    18, (colIndex) => '',
  ),
  );
  updateData(int rowIndex, int colIndex, String value) {
    tableData[rowIndex][colIndex] = value;
    update();
    print(tableData);
  }

  final List<String> tableColumn = [
    "DRUG NAME",
    "(1)Salbutamol(Ventolin ®)Inhaler",
    "(2)Hydrocortisoneinj 100mg/2ml",
    "(2)Adrenalineampoule 1mg/1ml",
    "(1)Chlorpheniramineampoule(Allerfin ®)10mg/1ml",
  ];

  final List<String> tableDataTwo = [
    'EXP DATE',
    'Lot no.',
    'Approved Qty',
    'LAS ',
    'High Alert',
    'Hazard',
    'JAN',
    'FEB',
    'MAR',
    'APR',
    'MAY',
    'JUN',
    'JUL',
    'AUG',
    'SEP',
    'OCT',
    'NOV',
    'DEC',
  ];

  TextEditingController cell1 = TextEditingController();
  TextEditingController cell2 = TextEditingController();
  TextEditingController cell3 = TextEditingController();
  TextEditingController cell4 = TextEditingController();
  TextEditingController cell5 = TextEditingController();
  TextEditingController cell6 = TextEditingController();
  TextEditingController cell7 = TextEditingController();
  TextEditingController cell8 = TextEditingController();
  TextEditingController cell9 = TextEditingController();
  TextEditingController cell10 = TextEditingController();
  TextEditingController cell11 = TextEditingController();
  TextEditingController cell12 = TextEditingController();
  TextEditingController cell13 = TextEditingController();
  TextEditingController cell14 = TextEditingController();
  TextEditingController cell15 = TextEditingController();
  TextEditingController cell16 = TextEditingController();
  TextEditingController cell17 = TextEditingController();
  TextEditingController cell18 = TextEditingController();

  TextEditingController cell19 = TextEditingController();
  TextEditingController cell20 = TextEditingController();
  TextEditingController cell21 = TextEditingController();
  TextEditingController cell22 = TextEditingController();
  TextEditingController cell23 = TextEditingController();
  TextEditingController cell24 = TextEditingController();
  TextEditingController cell25 = TextEditingController();
  TextEditingController cell26 = TextEditingController();
  TextEditingController cell27 = TextEditingController();
  TextEditingController cell28 = TextEditingController();
  TextEditingController cell29 = TextEditingController();
  TextEditingController cell30 = TextEditingController();
  TextEditingController cell31 = TextEditingController();
  TextEditingController cell32 = TextEditingController();
  TextEditingController cell33 = TextEditingController();
  TextEditingController cell34 = TextEditingController();
  TextEditingController cell35 = TextEditingController();
  TextEditingController cell36 = TextEditingController();

  TextEditingController cell37 = TextEditingController();
  TextEditingController cell38 = TextEditingController();
  TextEditingController cell39 = TextEditingController();
  TextEditingController cell40 = TextEditingController();
  TextEditingController cell41 = TextEditingController();
  TextEditingController cell42 = TextEditingController();
  TextEditingController cell43 = TextEditingController();
  TextEditingController cell44 = TextEditingController();
  TextEditingController cell45 = TextEditingController();
  TextEditingController cell46 = TextEditingController();
  TextEditingController cell47 = TextEditingController();
  TextEditingController cell48 = TextEditingController();
  TextEditingController cell49 = TextEditingController();
  TextEditingController cell50 = TextEditingController();
  TextEditingController cell51 = TextEditingController();
  TextEditingController cell52 = TextEditingController();
  TextEditingController cell53 = TextEditingController();
  TextEditingController cell54 = TextEditingController();
  TextEditingController cell55 = TextEditingController();
  TextEditingController cell56 = TextEditingController();
  TextEditingController cell57 = TextEditingController();
  TextEditingController cell58 = TextEditingController();
  TextEditingController cell59 = TextEditingController();
  TextEditingController cell60 = TextEditingController();
  TextEditingController cell61 = TextEditingController();
  TextEditingController cell62 = TextEditingController();
  TextEditingController cell63 = TextEditingController();
  TextEditingController cell64 = TextEditingController();
  TextEditingController cell65 = TextEditingController();
  TextEditingController cell66 = TextEditingController();
  TextEditingController cell67 = TextEditingController();
  TextEditingController cell68 = TextEditingController();
  TextEditingController cell69 = TextEditingController();
  TextEditingController cell70 = TextEditingController();
  TextEditingController cell71 = TextEditingController();
  TextEditingController cell72 = TextEditingController();
  TextEditingController cell73 = TextEditingController();
  TextEditingController cell74 = TextEditingController();
  TextEditingController cell75 = TextEditingController();
  TextEditingController cell76 = TextEditingController();
  TextEditingController cell77 = TextEditingController();
  TextEditingController cell78 = TextEditingController();
  TextEditingController cell79 = TextEditingController();
  TextEditingController cell80 = TextEditingController();
  TextEditingController cell81 = TextEditingController();
  TextEditingController cell82 = TextEditingController();
  TextEditingController cell83 = TextEditingController();
  TextEditingController cell84 = TextEditingController();


}