/* WAP for Account class. */

#include<bits/stdc++.h>
using namespace std;

class Bank{ // Creating a class that represent a Bank.
private:
    string name;
    double ACCNO=0;

public:

    void setName(string n){
    name = n;
    }

    void setACCNO(){
    ACCNO =(rand()% 90000 + 340800);
    }

    string getName(){
    return name;
    }

    double getACCNO(){
    return ACCNO;
    }

};

class SavingACC : public Bank{ // Sub class Inheriting a Saving account class.
    double Deposite;
    double  Balance = 1000;

public:

    void setBalance(double b){
        Balance += b;
    }

    double getBalance(){
    return Balance;
    }

    void Interest(){
    float serviceTax=5;
    Balance = Balance - serviceTax;
    }

    void Withdraw(){
    double money;
    cout<<"Enter the amount of money: ";
    cin>>money;
    if((Balance-money)>50){
        if(Balance<500){
            cout<<"For withdraw You have to pay 25 rupay penalty for minimum balance."<<endl<<endl;
            int pay = 25;
            Balance = Balance - (money + pay);
            Interest();
            cout<<"Transaction is successfully"<<endl;
            }
            else{
                Balance = Balance - money;
                Interest();
                cout<<"Transaction is successfully"<<endl;
            }
    }
    else{
        cout<<"Transaction cannot be done."<<endl;
    }
    }

    void Deposite1(){
    double money;
    cout<<"Enter the amount: "<<endl;
    cin>>money;
    setBalance(money);
    }

    void Display(){
        cout<<"\nBalance : "<<getBalance()<<endl;
        cout<<"\nThe minimum Balance : 500"<<endl;
    }
};

class CurrentACC : public Bank{  // Sub class Inheriting a Current account class.
    double Deposite;
    double  Balance = 500;

public:

    void setBalance(double b){
        Balance += b;
    }

    double getBalance(){
    return Balance;
    }

    void Cheque(){
        double money;
        string Dname;
        cout<<"Enter the name of Cheque receiver: ";
        cin>>Dname;
        cout<<"Enter the amount to send: ";
        cin>>money;
        if((Balance-money)>50){
            if(Balance==0){
                cout<<"Transaction cannot be done."<<endl;
            }
            else{
                Balance = Balance - money;
                cout<<"Transaction is successfully"<<endl;
                Display1(Dname,money);
            }
        }
    }

    void Deposite1(){
        double money;
        cout<<"Enter the amount for Deposite: ";
        cin>>money;
        setBalance(money);
    }

    void Display(){
        cout<<"\nBalance : "<<getBalance()<<endl;
        cout<<"\nThe minimum Balance : 500"<<endl;
    }

    void Display1(string bname, double money){
    cout<<"Cheque receiver: "<<bname<<endl;
    cout<<"Money: "<<money<<endl;
    }

};

int main(){
    cout<<"Welcome to Bank."<<endl;
    cout<<"------------------------------------------------------------------------"<<endl;
    int choice;
    cout<<"Enter the type of the account "<<endl;
    cout<<"1. Current"<<endl;
    cout<<"2. Saving"<<endl;
    cout<<"3. Exit"<<endl;
    cin>>choice;
    while(1){
        switch (choice){
            case 1:{
                CurrentACC C1;
                string n;
                cout<<"Enter the name of the Account holder: ";
                cin>>n;
                C1.setName(n);
                C1.setACCNO();
                cout<<"Account name: "<<C1.getName()<<endl;
                cout<<"Account number: "<<C1.getACCNO()<<endl;
                cout<<"Account Balance: "<<C1.getBalance()<<endl;
                do{
                    cout<<"In Bank What you want to perform press that: ";
                    cout<<"\n"<<"1. Deposite"<<endl;
                    cout<<"2. Cheque"<<endl;
                    cout<<"3. Exit"<<endl;
                    cin>>choice;
                    switch (choice){
                    case 1:
                        C1.Deposite1();
                        C1.Display();
                        break;
                    case 2:
                        C1.Cheque();
                        C1.Display();
                        break;
                    default:
                        cout<<"Type valid key"<<endl<<endl;
                    }
                }while(choice!=3);
            break;
            }
            case 2:{
                SavingACC S1;
                string name;
                cout<<"Enter the name of the Account holder: ";
                cin>>name;
                S1.setName(name);
                S1.setACCNO();
                cout<<"Account name: "<<S1.getName()<<endl;
                cout<<"Account number: "<<S1.getACCNO()<<endl;
                cout<<"Account Balance: "<<S1.getBalance()<<endl;
                do{
                    cout<<"In Bank What you want to perform press that: ";
                    cout<<"\n"<<"1. Deposite"<<endl;
                    cout<<"2. Withdraw"<<endl;
                    cout<<"3. Exit"<<endl;
                    cin>>choice;
                    switch (choice){
                    case 1:
                        S1.Deposite1();
                        S1.Display();
                        break;
                    case 2:
                        S1.Withdraw();
                        S1.Display();
                        break;
                    default:
                        cout<<"Type valid key"<<endl<<endl;
                    }
                }while(choice!=3);
            break;
            }
            case 3: {
            exit(1);
            }
            default:{
            cout<<"Error! Please type valid key."<<endl;
            exit(1);
            }
        }
    }
    return 0;
}