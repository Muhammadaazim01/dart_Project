import 'dart:async';
import 'dart:io';

import 'Doctor_info.dart';
import 'Patientinfo.dart';

class HospitalManagementSystem {
  List<Patientinfo> patients = [];
  List<doctorInfo> doctors = [];

  addPatients() {
    print("Enter Patient id");
    String id = stdin.readLineSync()!;
    print("Enter PAtient name");
    String name = stdin.readLineSync()!;
    print("Enter Age");
    int age = int.parse(stdin.readLineSync()!);
    print("Enter Gender");
    String gender = stdin.readLineSync()!;
    print("Patient Contact");
    int contact = int.parse(stdin.readLineSync()!);
    patients.add(Patientinfo(id, name, age, gender, contact));
    print("patients Add SuccessFully");
  }

  viewPatients() {
    if (patients.isEmpty) {
      print("patient not found");
    } else {
      print("Patient List:");
    }
    for (var patients in patients) {
      print(
          "ID${patients.id},NAME:${patients.name},AGE${patients.age}GENDER${patients.gender}CONTACT${patients.contact}");
    }
  }

  addDoctor() {
    print("Enter Doctor id");
    String id = stdin.readLineSync()!;
    print("Enter Doctor name");
    String name = stdin.readLineSync()!;
    print("Enter Age");
    int age = int.parse(stdin.readLineSync()!);
    print("Enter Gender");
    String gender = stdin.readLineSync()!;
    print("Patient Specialization");
    String contact = stdin.readLineSync()!;

    doctors.add(doctorInfo(id, name, age, gender, "Specialization"));
  }

  viewDoctor() {
    if (doctors.isEmpty) {
      print("Docto not Found");
    } else {
      print("Doctor List");
    }
    for (var doctors in doctors) {
      print(
          "ID${doctors.id},NAME:${doctors.name},AGE${doctors.age}GENDER${doctors.gender}CONTACT${doctors.Specialization}");
    }
  }
}

void main() {
  HospitalManagementSystem hms = HospitalManagementSystem();
  while (true) {
    print("HOSPITAL MANAGMENT SYSTEM");
    print("Press 1 For Add Patient");
    print("Press 2 For View Patient");
    print("Press 3 For Add Doctor");
    print("Press 4 For View Doctor");
    print("Press 5 For Exit");
    print("Enter Your Choice");
    String choice = stdin.readLineSync()!;
    switch (choice) {
      case "1":
        hms.addPatients();
        break;
      case "2":
        hms.viewPatients();
        break;
      case "3":
        hms.addDoctor();
        break;
      case "4":
        hms.viewDoctor();
        break;
      case "5":
        return;
      default:
        print("Invalied Choice.Please Try Again");
    }
  }
}
