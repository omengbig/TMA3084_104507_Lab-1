import 'dart:io';

void main() {
  print('====================================================');
  print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');
  
  while (true) {
    print('\nPlease enter your pizza size (small, medium, or large) or type "exit" to stop:');
    
    String? sizeInput = stdin.readLineSync();
    String size = sizeInput != null ? sizeInput.trim().toLowerCase() : '';
    
    if (size == 'exit' || size == 'quit') {
      print('Thank you! Exiting...');
      break;
    }
    
    if (size != 'small' && size != 'medium' && size != 'large') {
      print('Invalid pizza size. Please enter small, medium, or large.');
      continue;
    }
    
    print('How many pizzas do you want of $size?');
    
    String? quantityInput = stdin.readLineSync();
    int quantity = int.tryParse(quantityInput?.trim() ?? '0') ?? 0;
    
    if (quantity <= 0) {
      print('Invalid quantity. Please enter a number greater than 0.');
      continue;
    }
    
    int pricePerPizza = 0;
    
    switch (size) {
      case 'small':
        pricePerPizza = 5;
        break;
      case 'medium':
        pricePerPizza = 7;
        break;
      case 'large':
        pricePerPizza = 10;
        break;
    }
    
    int totalPayment = pricePerPizza * quantity;
    print('Total payment: $totalPayment USD');
  }
}