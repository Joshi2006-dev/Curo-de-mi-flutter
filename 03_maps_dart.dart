void main(){
  
  final Map<String, dynamic>pokemon = {
    "name": "Ditto",
    "hp": 100,
    "isALive": true,
    "abilities": <String>["impostor"],
    "sprites": {
      1: "ditto/front.png",
      2: "ditto/back.png"
    }
  };
  
  
  print("Name: ${pokemon["name"]}");
  print("Sprites: ${pokemon["sprites"]}");
  print("Front: ${ pokemon['sprites'][1]  }");
  print("Back: ${ pokemon['sprites'][2]  }");


}
