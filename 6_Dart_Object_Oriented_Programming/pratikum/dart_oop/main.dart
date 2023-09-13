import 'customer.dart';

void main() {
  var customer1 = Customer("nur@gmail.com", "nurul", "safitri", "rahmi");
  print(customer1.email);
  customer1.age = 10;
  print(customer1.age);
  customer1.displayCustomerName();

  var customer2 = Customer.defaultCustomer();
  customer2.displayCustomerName();
}