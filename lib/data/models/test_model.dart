import 'package:uuid/uuid.dart';

enum FilamentType { pla, abs, petg }

enum ProjectStatus { draft, inProgress, completed, failed }

class Project {
  final String id;
  final String userId;
  final String name;
  final List<Print> prints;
  final DateTime createdAt;
  DateTime updatedAt;
  String? gcodeUrl; // URL do arquivo G-code
  String? imageUrl; // URL da imagem do projeto

  Project({
    required this.userId,
    required this.name,
    required this.prints,
    this.gcodeUrl,
    this.imageUrl,
  }) : id = const Uuid().v4(),
       createdAt = DateTime.now(),
       updatedAt = DateTime.now();
}

class Print {
  final String id;
  final String projectId;
  final String filamentId;
  final double grams;
  final double timeHours;
  final DateTime createdAt;
  DateTime updatedAt;
  ProjectStatus status;

  Print({
    required this.projectId,
    required this.filamentId,
    required this.grams,
    required this.timeHours,
  }) : id = const Uuid().v4(),
       status = ProjectStatus.draft,
       createdAt = DateTime.now(),
       updatedAt = DateTime.now();

  void markAsCompleted() {
    status = ProjectStatus.completed;
    updatedAt = DateTime.now();
  }
}

class Printer {
  final String id;
  final String userId;
  final String name;
  final double nozzleSize; // em mm
  final double powerConsumption; // em Watts
  DateTime lastMaintenance;
  String? currentFilamentId;

  Printer({
    required this.userId,
    required this.name,
    required this.nozzleSize,
    required this.powerConsumption,
  }) : id = const Uuid().v4(),
       lastMaintenance = DateTime.now();
}

class Filament {
  final String id;
  final String userId;
  final FilamentType type;
  final String color;
  final String brand;
  final double weightTotal; // em gramas
  final double costPerKg;
  final DateTime purchaseDate;
  double weightRemaining;
  DateTime updatedAt;

  Filament({
    required this.userId,
    required this.type,
    required this.color,
    required this.brand,
    required this.weightTotal,
    required this.costPerKg,
    required this.purchaseDate,
  }) : id = const Uuid().v4(),
       weightRemaining = weightTotal,
       updatedAt = DateTime.now();

  void use(double grams) {
    if (grams > weightRemaining) throw Exception('Not enough filament');
    weightRemaining -= grams;
    updatedAt = DateTime.now();
  }
}
