#include<iostream>
#include<unistd.h>
#include<string.h>
#include<sys/types.h>

using namespace std;

int main(){
    cout<<"Here I am just before the 1stfork()statement\n";
    fork();
    cout<<"Here I am just after the 1stfork()statement\n";
    fork();
    cout<<"Here I am just after the 2ndfork()statement\n";
    cout<<"Hello WOrld from process "<<getpid()<<endl;
    return 0;
}