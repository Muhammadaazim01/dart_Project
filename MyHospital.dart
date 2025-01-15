import 'dart:io';
import 'Doctor_info.dart';
import 'Patientinfo.dart';

class HospitalManagementSystem {
  List<Patientinfo> patients = [];
  List<doctorInfo> doctors = [];
  List<Map<String, String>> Appointments = [];

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

  deletedPatient() {
    print("Enter Patients id to Deleted");
    String id = stdin.readLineSync()!;
    patients.removeWhere((p) => p.id == id);
    print("Patient Remove SuccessFully.");
  }

  deletedDoctor() {
    print("Enter Doctor id to Deleted");
    String id = stdin.readLineSync()!;
    doctors.removeWhere((d) => d.id == id);
    print("Doctor Remove SuccessFully.");
  }

  searchPatient() {
    print("Enter Id Or Name To Searched Patient");
    String query = stdin.readLineSync()!;
    var result = patients
        .where((p) => p.id.contains(query) || p.name.contains(query))
        .toList();
    if (result.isEmpty) {
      print("Patient Not Found");
    } else {
      for (var patients in result) {
        print(
            "ID ${patients.id},NAME ${patients.name}, AGE ${patients.age}, GENDER ${patients.gender}, CONTACT ${patients.contact}");
      }
    }
  }

  bookAppointment() {
    print("Enter Patient Id");
    String patientid = stdin.readLineSync()!;
    print("Enter Doctor Id");
    String Doctorid = stdin.readLineSync()!;
    print("Enter Date  (DD/MM/YY)");
    String date = stdin.readLineSync()!;
    Appointments.add(
        {"Patient Id": patientid, "Doctor Id": Doctorid, "Date": date});
    print("Appointment Booked SuccessFully");
  }

  viewAppointments() {
    if (Appointments.isEmpty) {
      print("No appointments found.");
    } else {
      for (var Appointments in Appointments) {
        print(
            "Patient ID: ${Appointments['patientId']}, Doctor ID: ${Appointments['doctorId']}, Date: ${Appointments['date']}");
      }
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
    print("Press 5 For Deleted Patient");
    print("Press 5 For Deleted Doctor");
    print("Press 6 For Searched Patient");
    print("Press 7 For Booked Appointment");
    print("Press 8 For Booked Appointment");
    print("Press 9 For Exit");
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
        hms.deletedPatient();
        break;
      case "6":
        hms.deletedDoctor();
        break;
      case "7":
        hms.searchPatient();
        break;
      case "8":
        hms.bookAppointment();
        break;
      case "9":
        hms.viewAppointments();
        return;
      default:
        print("Invalied Choice.Please Try Again");
    }
  }
}
