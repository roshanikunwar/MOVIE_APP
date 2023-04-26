/* 
* @Author:Jiten Basnet on 12/03/2023
* @Company: EB Pearls
*/

class Pizza {

  Pizza({
    required this.id,
    required this.name,
    required this.price,
  });

  //Member variables
  int id;
  String name;
  double price;


  /// Factory constructor which returns [Pizza] object
  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(id:json['id'], price:json['price'], name:json['name']);
  }

  static List<Pizza> pizzaList = [
    Pizza(id:1,price:200, name:'Pizza 1'),
    Pizza(id:1,price:200, name:'Pizza 1'),
    Pizza(id:1,price:200, name:'Pizza 1'),
    Pizza(id:1,price:200, name:'Pizza 1'),
  ];
}
