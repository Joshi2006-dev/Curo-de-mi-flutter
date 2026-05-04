void main(){
 
  final Map <String, dynamic> rawJason = {
    'name': 'Tony Stark',
    'power':'Money',
    'isAlive' : true
  };
  
  final wolverine = Hero.fromJson(rawJason);
  
  print(wolverine);
    print(wolverine.name);
    print(wolverine.power);
  print (wolverine.isAlive);


}

class Hero{
  String name;
  String power;
  bool isAlive;
  
  Hero(
    {required this.name, 
     required this.power,
    required this.isAlive});
  
  Hero.fromJson(Map<String, dynamic> json)
    :name = json['name'] ?? 'No name found',
     power = json['power'] ?? 'No power found',
     isAlive = json['isAlive'] ?? 'No isAlive found';
  
//   Hero(String pName, String pPower)
//     : name = pName,
//       power = pPower;
  
  @override
  String toString(){
    return '$name - $power, isAlive:${isAlive ?'Yes':'No'}';
  }
}