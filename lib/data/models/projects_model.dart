import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

enum TypeFilaments { pla, abs, petg }

enum StatusProjects { draft, completed, failed }

class ProjectsPrintModles {
  late String projectsID;
  late String userId;
  String name;
  String photoURL = '';
  String projectURL = '';
  double filamentTime = 0;
  double filamentUsed = 0;
  List<PrintModles> prints = [];

  ProjectsPrintModles({required this.name, required this.prints}) {
    projectsID = Uuid().v4();
  }
}

class PrintModles {
  late String name;
  double tempo;
  double gramas;
  String typeFilamentsId;
  late StatusProjects statusProjects;

  PrintModles({
    required this.gramas,
    required this.tempo,
    required this.typeFilamentsId,
  });
}

class PrinterModels {
  late String printerId;
  late String userId;
  String name;
  double powerConsumption;
  double nozzleSize;
  PrinterModels({
    required this.name,
    required this.nozzleSize,
    required this.powerConsumption,
  }) {
    printerId = Uuid().v4();
  }
}

class FilamentModels {
  late String filamentID;
  late String userId;
  late double weightRemaining; //Peso restante
  late DateTime purchaseDate; // compra data
  late bool isActive;
  late String brand; // Marca
  TypeFilaments type;
  String color;
  double weight; // peso
  double price;

  FilamentModels({
    required this.type,
    required this.color,
    required this.weight,
    required this.price,
  });
}
