#include<bits/stdc++.h>
#include<fstream>
#include<string>
#include<iomanip>

using namespace std;
int main(){
  string path = "fileslab2.csv";
  vector<string> nums;

  try {
    ifstream file;
    string read;
    file.open(path);
    if(!file){
      throw runtime_error("File failed to open");
    }
    while (getline(file,read))
    {
      stringstream ss(read);
      while(getline(ss,read,',')){
        nums.push_back(read);
      }
    }
    
    file.close();
  }

  catch (exception& e){
    cerr<<e.what()<<endl;
  }
  for(int i=0;i<nums.size();i+=3){
    int total = 0;
    for(int j=0;j<3;j++){
      total +=stoi(nums[i+j]);
    }
    cout<<total/3.0<<" ";
  }
  return 0;
}