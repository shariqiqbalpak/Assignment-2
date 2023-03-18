class Bank { 
 List<BankAccount> accounts = []; 
  
 void addAccount(BankAccount account) { 
 accounts.add(account); 
 } 
  
 void removeAccount(BankAccount account) { 
 accounts.remove(account); 
 }  
  
BankAccount findHighestBalance() { 
 BankAccount highestBalanceAccount = accounts[0]; 
 for (var account in accounts) { 
 if (account.balance > highestBalanceAccount.balance) { 
 highestBalanceAccount = account; 
 } 
 } 
 return highestBalanceAccount; 
  } 
 } 
  
 class BankAccount { 
 String name; 
 double balance; 
  
BankAccount(this.name, this.balance); 
 } 
void main() { 
 Bank bank = Bank(); 
  
 BankAccount account1 = BankAccount("John ", 68888.0); 
 BankAccount account2 = BankAccount("Jack", 10099.0); 
 BankAccount account3 = BankAccount("SHady", 10000.0); 
  
 bank.addAccount(account1); 
 bank.addAccount(account2); 
 bank.addAccount(account3); 
  
 BankAccount highestBalanceAccount = bank.findHighestBalance(); 
  
 print("Account with the highest balance: ${highestBalanceAccount.name}, ${highestBalanceAccount.balance}"); 
  
 bank.removeAccount(account2); 
  
 highestBalanceAccount = bank.findHighestBalance(); 
  
 print("Account with the highest balance after increment: ${highestBalanceAccount.name}, ${highestBalanceAccount.balance}"); 
 }