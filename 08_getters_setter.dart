

void main(){
  final mySquare = Square (side:-10);
//   mySquare.side=-5;
  
  print('area: ${mySquare.area}');
}

class Square{
  double _side;
  double get area{
    return _side * _side;
  }
  

  Square ({
    required side
  })
    : assert (side >=0, 'side must be >=0'),
    _side = side;
  
  double CalculatedArea(){
    return _side * _side;
  }
  
}