abstract class Account{
  String name,email,password;
  double balance;

  Account(this.name,this.email,this.password,this.balance);
  bool _checkOperation(double value) => balance>=value;
  void deposit(double value) {
    if(_checkOperation(value)){this.balance -= value;}
    else {print("wrong input");}
    print(this.balance);
  }
  void withdraw(double value) {
    this.balance += value;
    print(this.balance);
  }
  void printBalance() {
    print(this.balance);
  }
}


class NormalAccount extends Account{
  NormalAccount(String name, String email, String password, double balance) : super(name, email, password, balance + 500);

}

class VIPAccount extends Account{
  VIPAccount(String name, String email, String password, double balance) : super(name, email, password, balance + 2000);

}



class BankSystem{
  Map<String,Account> accounts = {};

  void addAccount(String name, String email, String password, double balance,Types type){
    if(type == Types.normal){
      accounts.addAll({password:NormalAccount(name,email,password,balance)});
      
    }
    else{
      accounts.addAll({password:VIPAccount(name,email,password,balance)});
    }
  }
  void deleteAccount(String password){
      accounts.remove(password);
  }

  doDeposit(String password,double value){
    accounts[password].deposit(value);
  }
  doWithdraw(String password,double value){
    accounts[password].withdraw(value);
  }
  showBalance(String password){
    accounts[password].printBalance();
  }
}

enum Types{
  vip,normal
}