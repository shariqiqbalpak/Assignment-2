class Book { 
 late String title; 
 late String author; 
 late String publisher; 
 late double price; 
  
 double calculateDiscount(double percentage) { 
 double discountAmount = price * (percentage / 100); 
 double discountedPrice = price - discountAmount; 
 return discountedPrice; 
   } 
 } 
 void main() { 
 Book book = Book(); 
 book.title = "Law Of Torts"; 
 book.author = "Allen Linden"; 
 book.publisher = "English"; 
 book.price = 10.99; 
  
 double discountPercentage = 20.0; 
 double discountedPrice = book.calculateDiscount(discountPercentage); 
  
 print("Title: ${book.title}"); 
 print("Author: ${book.author}"); 
 print("Publisher: ${book.publisher}"); 
 print("Price: ${book.price}"); 
 print("Discounted Price ($discountPercentage% off): $discountedPrice"); 
 }