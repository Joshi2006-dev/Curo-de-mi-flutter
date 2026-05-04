void main() {
  
  final plants = WindPlant(initialEnergy: 100);
  final nuclear = NuclearPlant(energyLeft:1000);
  print(plants);

  print('wind: ${chargePhone(plants)}');
  print('nuclear: ${chargePhone(nuclear)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum PlanType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlanType type; //Nuclear, Wind, Water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlanType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  
  @override
  final PlanType type = PlanType.nuclear;
  
  NuclearPlant({required this.energyLeft});
  
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount*0.5);
  }
}
