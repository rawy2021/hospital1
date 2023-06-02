import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../modeles/form1_model.dart';

/////////////////////////TextEdit////////////////////////

class Form1Controller extends GetxController {
  var visitLenght = TextEditingController();
  var foucasOfVisit = TextEditingController();
  var PB = TextEditingController();
  var P = TextEditingController();
  var R = TextEditingController();
  var sPO2 = TextEditingController();
  var diagnosis = TextEditingController();
  var precautions = TextEditingController();
  var ocularInspection = TextEditingController();
  var palpation = TextEditingController();
  var rom = TextEditingController();
  var gait = TextEditingController();
  var mmt = TextEditingController();
  var posture = TextEditingController();
  var other = TextEditingController();
  var hydroTherapy = TextEditingController();
  var electroTherapy = TextEditingController();
  var massage = TextEditingController();
  var romph = TextEditingController();
  var stretching = TextEditingController();
  var strengthening = TextEditingController();
  var gaitTraining = TextEditingController();
  var posturalTraining = TextEditingController();
  var homeInstruction  = TextEditingController();
  var phOther  = TextEditingController();
  var incidentsOrLockOfThereOf  = TextEditingController();
  var statusofProgress  = TextEditingController();
  var dischargePlan  = TextEditingController();
  var planForNextVisit   = TextEditingController();
  var physicalTherepyName   = TextEditingController();
  var badge   = TextEditingController();
  var sinature   = TextEditingController();


/////////////////////////checkBox////////////////////////

  bool Routine = false;
  bool UnSecdule = false;
  bool Other = false;
  bool treatmentPlan = false;
  bool containe = false;
  bool physician = false;
  bool nureses = false;
  bool RT = false;
  bool OT = false;
  bool SW = false;
  bool dietition = false;

  void updateCheckboxRoutine(bool value) {Routine = value;update();}
  void updateCheckboxUnSecdule(bool value) {UnSecdule = value;update();}
  void updateCheckboxOther(bool value) {Other = value;update();}
  void updateCheckboxOthertreatmentPlan(bool value) {treatmentPlan = value;update();}
  void updateCheckboxContaine(bool value) {containe = value;update();}
  void updateCheckboxPhysician(bool value) {physician = value;update();}
  void updateCheckboxNureses(bool value) {nureses = value;update();}
  void updateCheckboxRT(bool value) {RT = value;update();}
  void updateCheckboxOT(bool value) {OT = value;update();}
  void updateCheckboxSW(bool value) {SW = value;update();}
  void updateCheckboxDietition(bool value) {dietition = value;update();}


  sendtoapi(form1Model model) {}

  /////////////////////////Date////////////////////////

  DateTime _selectDate = DateTime.now();

  DateTime get selectDate => _selectDate;

  void updateSelectDate(DateTime newDate) {
    _selectDate = newDate;
    update();
  }
/////////////////////////Time////////////////////////

  TimeOfDay? _selectedTime;

  TimeOfDay? get selectedTime => _selectedTime;

  void updateSelectedTime(TimeOfDay? newTime) {
    _selectedTime = newTime;
    update();
  }


/////////////////////////SignatureController////////////////////////

}
