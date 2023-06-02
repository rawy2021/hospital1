import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/custom_signature_widget.dart';
import '../../controller/form1_controller.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Form1Controller>(
        init: Form1Controller(),
        builder: (controller)=>
            Scaffold(
              body: ListView(
                children:[
                  SafeArea(
                    child: Form(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 2000,
                                height: 20,
                                child: Text("Physical Therapy Visit Note",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),)),
                            Row(
                              children: [
                                Text(
                                  'Date :',
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child: TextField(
                                    //   controller: controller.text1,
                                    readOnly: true,
                                    onTap: () async{
                                      DateTime? pickedate = await showDatePicker(
                                          context: context,
                                          initialDate: controller.selectDate,
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime.now());
                                      if(pickedate != null){
                                        controller.updateSelectDate(pickedate);
                                      }
                                    },
                                    decoration: InputDecoration(
                                        hintText:'   ${controller.selectDate.toLocal()}'
                                    ),
                                  ),
                                ),
                                Text(
                                  'Time in :',
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child: TextField(
                                    readOnly: true,
                                    onTap: () async {
                                      TimeOfDay? pickedTime = await showTimePicker(
                                        context: context,
                                        initialTime: controller.selectedTime ?? TimeOfDay.now(),);
                                      if (pickedTime != null) {
                                        controller.updateSelectedTime(pickedTime);

                                      }

                                    },

                                    decoration: InputDecoration(
                                      hintText: '  ${controller.selectedTime?.format(context)}',
                                    ),

                                  ),
                                ),
                                Text(
                                  'Time Out :',
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child: TextField(
                                    readOnly: true,
                                    onTap: () async {
                                      TimeOfDay? pickedTime = await showTimePicker(
                                        context: context,
                                        initialTime: controller.selectedTime ?? TimeOfDay.now(),);
                                      if (pickedTime != null) {
                                        controller.updateSelectedTime(pickedTime);}},

                                    decoration: InputDecoration(
                                      hintText: '  ${controller.selectedTime?.format(context)}',
                                    ),

                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Text("Visit Lenght :",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  flex: 1,
                                  child:  TextField(
                                    controller: controller.visitLenght,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                                SizedBox(width: 500,),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text("NSF : No Significant Findings"),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Foucs Of Visit :",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.foucasOfVisit,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Visit Type  :"),
                              //  SizedBox(width: 10,),
                                Checkbox(
                                  value: controller.Routine,
                                  onChanged: (val1){
                                    controller.updateCheckboxRoutine(val1?? false);
                                  },
                                ),
                                Text( "Routine"),
                                Spacer(),
                                Checkbox(
                                  value: controller.UnSecdule,
                                  onChanged: (val1){
                                    controller.updateCheckboxUnSecdule(val1?? false);
                                  },
                                ),
                                Text( "UnSecdule"),
                                Spacer(),
                                Checkbox(
                                  value: controller.Other,
                                  onChanged: (val1){
                                    controller.updateCheckboxOther(val1?? false);
                                  },
                                ),
                                Text( "Other :  "),
                                Expanded(
                                  child:TextField(
                                    // controller: controller.foucasOfVisit,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),)


                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("P/B",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.PB,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                                Text("Right/Left/Lying/Siting",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                SizedBox(width: 20,),
                                Text("P",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.P,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text("R",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.R,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text("SPO2",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.sPO2,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Diagnosis: ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.diagnosis,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Precautions: ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.precautions,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Divider(),
                            Text("Subjective Findings: "),
                            Row(
                              children: [
                                Text("Ocular Inspection : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.ocularInspection,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Palpation : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.palpation,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("ROM : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.rom,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Gait : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.gait,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("MMT : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.mmt,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Posture : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.posture,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Other : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.other,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Text("Physical Therapy Managment : "),
                            Row(
                              children: [
                                Text("Hydro Therapy : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.hydroTherapy,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Electro Therapy : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.electroTherapy,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Massage : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.massage,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Rom : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.romph,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Stretching : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.stretching,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Strengthening : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.strengthening,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Gait Training: ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.gaitTraining,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Postural Training: ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.posturalTraining,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Home Instruction  : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.homeInstruction,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Other : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.phOther,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Treatment Plan : "),
                                SizedBox(width: 30,),
                                Checkbox(value: controller.treatmentPlan,
                                    onChanged: (val1){
                                      controller.updateCheckboxOthertreatmentPlan(val1 ?? false);
                                    }),
                                Text("Containe"),
                                SizedBox(width: 30,),
                                Checkbox(value: controller.containe,
                                    onChanged: (val1 ){
                                      controller.updateCheckboxContaine(val1 ?? true
                                      );
                                    }),
                                Text("Containe")
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Incidents or Lock of there of : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.incidentsOrLockOfThereOf,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Status of Progress : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.statusofProgress,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Interdisciplinary Communication  : "),
                                SizedBox(width: 30,),
                                Checkbox(value: controller.physician,
                                    onChanged: (val1){
                                      controller.updateCheckboxPhysician(val1 ?? false);
                                    }),
                                Text("Physician"),
                              //  SizedBox(width: 30,),
                                Spacer(),
                                Checkbox(value: controller.nureses,
                                    onChanged: (val1 ){
                                      controller.updateCheckboxNureses(val1 ?? false);
                                    }),
                                Text("Nureses"),
                               // SizedBox(width: 30,),
                                Spacer(),
                                Checkbox(value: controller.RT,
                                    onChanged: (val1 ){
                                      controller.updateCheckboxRT(val1 ?? false);
                                    }),
                                Text("RT"),
                               // SizedBox(width: 30,),
                                Spacer(),
                                Checkbox(value: controller.OT,
                                    onChanged: (val1 ){
                                      controller.updateCheckboxOT(val1 ?? false);
                                    }),
                                Text("OT"),
                              //  SizedBox(width: 30,),
                                Spacer(),
                                Checkbox(value: controller.SW,
                                    onChanged: (val1 ){
                                      controller.updateCheckboxSW(val1 ?? false);
                                    }),
                                Text("SW"),
                               // SizedBox(width: 30,),
                                Spacer(),
                                Checkbox(value: controller.dietition,
                                    onChanged: (val1 ){
                                      controller.updateCheckboxDietition(val1 ?? false);
                                    }),
                                Text("Dietition"),
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Text("Discharge Plan : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.dischargePlan,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Plan for next visit : ",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.planForNextVisit,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Physical Therepy Name",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.physicalTherepyName,
                                    decoration: InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),
                                const Text("Badge",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.badge,
                                    decoration: const InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),


                                const SizedBox(width: 20,),
                                const Text("Sinature",
                                  style: TextStyle(fontSize: 15 , color: Colors.grey),
                                ),
                                Expanded(
                                  child:  TextField(
                                    controller: controller.sinature,
                                    decoration: const InputDecoration(
                                      //  hintText: 'Enter text here',
                                    ),
                                  ),
                                ),

                              ],
                            ),



                          ],
                        ),
                      ),
                    ),
                  ),
                ]
              ),
            ),

    );
  }
}
