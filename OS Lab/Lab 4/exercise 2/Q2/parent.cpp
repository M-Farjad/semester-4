#include<iostream>
#include<sys/types.h>
#include<string.h>
#include<unistd.h>
// #include<wait.h>


using namespace std;
int main(){
    int PID;
    cout<<"I am the parent process and the pid is: "<<PID<<endl;
    cout<<"I am Before the use of fork()\n";
    PID = fork();
    cout<<"I am after the use of fork()\n";
    if(PID==0)
    {
        cout<<"I am the child with pid: "<<getpid()<<endl;
        cout<<"Loading hello.out"<<endl;
        char *args[] = {"hello.out", NULL};
        // char *args[]={"./hello.out",NULL};
        execv(args[0],args);
    }
    else 
        cout<<"I am the parent with pid: "<<getpid()<<endl;
}
