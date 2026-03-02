import 'dart:developer';

import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String selectedGender = "";
  String selectedQalification = "";
  bool isDanceSelected = false;
  bool isMusicSelected = false;
  bool isOtherSelected = false;

  void submitForm() {
    log("Gender: $selectedGender");
    log("Qualification: $selectedQalification");
    log("Dance: $isDanceSelected");
    log("Music: $isMusicSelected");
    log("Other: $isOtherSelected");

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Form Submitted Successfully!"),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Registration Form'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(label: Text('NAME',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(label: Text('FATHER NAME',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(label: Text('MOTHER NAME',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(label: Text('AGE',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              onTap: () async {
                DateTime? dob = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                );
              },
              decoration: InputDecoration(label: Text('DOB',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),)),
            ),
          ),
      
          Padding(
            padding: const EdgeInsets.all(16),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
             children: [

              Text("QUALIFICATION",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
              
              Row(
                children: [
                SizedBox(
                  height: 45,
                  width: 200,
                  child: RadioListTile<String>(value: 'BTECH',groupValue: selectedGender,onChanged:(value) {
                    setState(() {
                        selectedQalification  = value.toString();
                    });
                  }, title: Text('BTECH'),),
                ),
                SizedBox(
                  height: 45,
                  width: 200,
                  child: RadioListTile<String>(value: 'DEGREE',groupValue: selectedGender,onChanged: (value) {
                    setState(() {
                      selectedQalification = value.toString();
                    });
                  }, title: Text('DEGREE')),
                ),
                SizedBox(
                  height: 45,
                  width: 200,
                  child: RadioListTile<String>(value: 'DIPLOMA',groupValue: selectedGender,onChanged: (value) {
                    setState(() {
                      selectedQalification = value.toString();
                    });
                  }, title: Text('DIPLOMA')),
                
                ),
                ],
              )
              ],
            ),
        
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
             children: [

              Text("GENDER",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
              
              Row(
                children: [
                SizedBox(
                  height: 45,
                  width: 200,
                  child: RadioListTile<String>(value: 'male',groupValue: selectedGender,onChanged:(value) {
                    setState(() {
                      selectedGender = value.toString();
                    });
                  }, title: Text('male'),),
                ),
                SizedBox(
                  height: 45,
                  width: 200,
                  child: RadioListTile<String>(value: 'female',groupValue: selectedGender,onChanged: (value) {
                    setState(() {
                      selectedGender = value.toString();
                    });
                  }, title: Text('female')),
                ),
                SizedBox(
                  height: 45,
                  width: 200,
                  child: RadioListTile<String>(value: 'other',groupValue: selectedGender,onChanged: (value) {
                    setState(() {
                      selectedGender = value.toString();
                    });
                  }, title: Text('other')),
                
                ),
                ],
              )
              ],
            ),
        
          ),
        
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(label: Text('MOBILE NUMBER',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),)),
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start, 
   children: [

    Text("HOBBIES",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
    
    Row(
  
    children: [
      SizedBox(
        height: 45,
        width: 200,
        child: CheckboxListTile(
          tristate: true,
          value: isDanceSelected,
          onChanged: (value) {
            setState(() {
              isDanceSelected = value!;
            });
          },
          title: Text('Dance'),
        ),
        
      ),
      SizedBox(
        height: 45,
        width: 200,
        child: CheckboxListTile(
          tristate: true,
          value: isMusicSelected,
          onChanged: (value) {
            setState(() {
              isMusicSelected = value!;
            });
          },
          title: Text('Music'),
        ),
      ),
      SizedBox(
        height: 45,
        width: 200,
        child:CheckboxListTile(
          tristate: true,
          value: isOtherSelected,
          onChanged: (value) {
            setState(() {
              isOtherSelected = value!;
            });
          },
          title: Text('other'),
        ),  ),

    ],
    )
  
    ],
  ),
),
Padding(
  padding: const EdgeInsets.all(20),
  child: SizedBox(
    width: double.infinity,
    height: 50,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
onPressed: () {
  submitForm();
},
child: const Text(
  "SUBMIT",
  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
),
    ),
  ),
),
        ],
      ),
    );
  }
}
