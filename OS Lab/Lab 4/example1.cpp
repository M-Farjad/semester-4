#include<iostream>
#include<sys/types.h>
#include<string.h>
#include<unistd.h>
#define MAX_COUNT 200
#define BUF_SIZE 100

using namespace std;
int main(){
    pid_t PID;
    int i;
    char buf[BUF_SIZE];

    fork();
    PID=getpid();
    for (i = 1; i < MAX_COUNT; i++)
    {
        // cout<<"This id is from PID: "<<PID<<" and Value: "<<i<<endl;
        sprintf(buf,"This line is from pid %d, value is %d\n",PID,i);
        write(1,buf,strlen(buf));
    }
}