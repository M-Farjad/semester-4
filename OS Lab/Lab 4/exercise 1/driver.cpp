#include<iostream>
#include<unistd.h>
#include<string.h>
#include<sys/types.h>

using namespace std;

int main(){
    int pid;
    cout<<"Hello World !\n";
    cout<<"I am the parent process and the pid is : "<<getpid()<<endl;
    cout<<"Here I am just before the fork()statement\n";
    pid=fork();
    cout<<"Here I am just after the fork()statement\n";
    if(pid==0)
        cout<<"I am the child process and the pid is: "<<getpid()<<endl;
    else
        cout<<"I am the parent process and the pid is: "<<getpid()<<endl;

}