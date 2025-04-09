import 'package:uuid/uuid.dart';

enum TypeFilaments { pla, abs, petg }

enum StatusProjects { draft, completed, failed }

class ProjectsPrintModels {
  String name;
  List<PrintModels> prints = [];
  late String projectsID;
  late String userId;
  late String photoURL;
  late String projectURL;
  late double totalTime;
  late double totalFilament;
  late double costPerProjectsPrint;
  late DateTime createdAt;
  late DateTime updatedAt;

  ProjectsPrintModels({required this.name, required this.prints}) {
    projectsID = Uuid().v4();
  }
}

class PrintModels {
  String name;
  double time;
  double gramas;
  String typeFilamentsId;
  late StatusProjects statusProjects;
  late double costPerPrint;
  late DateTime createdAt;
  late DateTime updatedAt;

  PrintModels({
    required this.name,
    required this.gramas,
    required this.time,
    required this.typeFilamentsId,
  });
}

class PrintersModels {
  String name;
  double powerConsumption; // Watts por hora
  double nozzleSize; //Tamanho do bico
  late String printerId;
  late String userId;
  late DateTime lastMaintenance; // Data da última manutenção
  late String currentFilamentID; // ID do filamento atual
  late DateTime createdAt;
  late DateTime updatedAt;

  PrintersModels({
    required this.name,
    required this.nozzleSize,
    required this.powerConsumption,
  }) {
    printerId = Uuid().v4();
  }
}

class FilamentModels {
  TypeFilaments type;
  String color;
  double weight; // peso
  double costPerKg; //Custo por quilograma
  late String filamentID;
  late String userId;
  late double weightRemaining; //Peso restante
  late DateTime purchaseDate; // compra data
  late String brand; // Marca
  late DateTime createdAt;
  late DateTime updatedAt;

  FilamentModels({
    required this.type,
    required this.color,
    required this.weight,
    required this.costPerKg,
  });
}
