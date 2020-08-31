#include<stdio.h>
#include<unistd.h>
int overflow(){
	char buffer[500];
	int userinput;
	userinput=read(0,buffer,700);
	printf("\n User provided %d bytes.Buffer content is %s\n",userinput,buffer);
}
int main(int argc,char *argv[]){
	overflow();
	return 0;
	}
