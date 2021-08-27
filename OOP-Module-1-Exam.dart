import 'dart:io';

class User {
  String _accName = 'EarlChurl';
  String _accPass = 'dogdogdog';
  int money = 0;

  account() {
    return _accName;
  }

  code() {
    return _accPass;
  }
}

class Login extends User {
  String username;
  String password;

  accountLogin() {
    if (account() == username) {
      passwordLogin();
    } else {
      print("Username not recognized.");
      exit(0);
    }
  }

  passwordLogin() {
    if (code() == password) {
      print("Welcome to 801 Bank.\n");
    } else {
      print("Invalid Password.");
      exit(0);
    }
  }

  Login(this.username, this.password);
}

class FirstAccount extends User {
  int money = 1000;

  menu() {
    print("What do you want to do?");
    print("1 = Check Balance\n2 = Deposit\n3 = Withdraw\n4 = Exit");
    int? option = int.parse(stdin.readLineSync()!);
    if (option == 1) {
      checkBalance()();
    } else if (option == 2) {
      deposit();
    } else if (option == 3) {
      withdraw();
    } else {
      print("\nGoodbye!\n");
      exit(0);
    }
  }

  deposit() {
    print('How much do you want to deposit?\n');
    int? depositMoney = int.parse(stdin.readLineSync()!);
    money = money + depositMoney;
    String total = money.toString();
    print('\nYour total balance now is ' + total + '. \n');
    menu();
  }

  withdraw() {
    print('How much do you want to withdraw?');
    int? withdrawMoney = int.parse(stdin.readLineSync()!);
    if (money < withdrawMoney) {
      print("\nNot enough money to withdraw.\n");
      menu();
    } else {
      money = money - withdrawMoney;
      String total = money.toString();
      print('\nYour total balance now is ' + total + '. \n');
      menu();
    }
  }

  checkBalance() {
    String total = money.toString();
    print("\nYour current balance is " + total + '. \n');
    menu();
  }
}

class SecondAccount extends User {
  int money = 1500;

  menu() {
    print("What do you want to do?");
    print("1 = Check Balance\n2 = Deposit\n3 = Withdraw\n4 = Exit");
    int? option = int.parse(stdin.readLineSync()!);
    if (option == 1) {
      checkBalance()();
    } else if (option == 2) {
      deposit();
    } else if (option == 3) {
      withdraw();
    } else {
      print("\nGoodbye!\n");
      exit(0);
    }
  }

  deposit() {
    print('How much do you want to deposit?\n');
    int? depositMoney = int.parse(stdin.readLineSync()!);
    money = money + depositMoney;
    String total = money.toString();
    print('\nYour total balance now is ' + total + '. \n');
    menu();
  }

  withdraw() {
    print('How much do you want to withdraw?');
    int? withdrawMoney = int.parse(stdin.readLineSync()!);
    if (money < withdrawMoney) {
      print("\nNot enough money to withdraw.\n");
      menu();
    } else {
      money = money - withdrawMoney;
      String total = money.toString();
      print('\nYour total balance now is ' + total + '. \n');
      menu();
    }
  }

  checkBalance() {
    String total = money.toString();
    print("\nYour current balance is " + total + '. \n');
    menu();
  }
}

void main() {
  Login details = Login("EarlChurl", "dogdogdog");
  details.accountLogin();

  FirstAccount first = FirstAccount();
  SecondAccount second = SecondAccount();

  choice() {
    print("You have two accounts. What account would you like to access?");
    print("1 = Default Account\n2 = Alternative Account\n3 = Close");
    int? pick = int.parse(stdin.readLineSync()!);
    if (pick == 1) {
      first.menu();
    } else if (pick == 2) {
      second.menu();
    } else {
      print("\nGoodbye!\n");
      exit(0);
    }
  }

  choice();
}
