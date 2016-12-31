#include "stdafx.h"
#include <iostream>
#include <fstream>
#include <time.h>
#include <conio.h>
#define clk CLOCKS_PER_SEC
using namespace std;
void edge(int **a,int h,int b)
{
    int i,j;
    for(i=0;i<b-1;i++)
    {
        for(j=1;j<h;j++)
        {
            if (a[i][j]!=a[i][j+1])
                a[i][j]=1;
            else
                a[i][j]=0;
        }
    }
}
int main()
{
	ifstream fin;
	fin.open("input.in");
	ofstream fout;
	fout.open("output.dat");
    int h,b,i,j,cs,k;
	double total=0,total1=0;
	fin>>cs;
	for (k=1;k<=cs;k++)
	{
		clock_t st = clock();
		fin>>h>>b;
		int** a=new int*[b];
		for(i=0;i<b;i++)
	        	a[i]=new int[h];
	    for(i=0;i<b;i++)
	    {
			for(j=0;j<h;j++)
	      		fin>>a[i][j];
	    }
		clock_t st1 = clock();
	    edge(a,h,b);
		clock_t et = clock();
		double t=double(et - st)/CLOCKS_PER_SEC;
		double t1=double(et - st1)/CLOCKS_PER_SEC;
		total+=t;
		total1+=t1;
		fout<<k<<'\t'<<h<<'\t'<<b<<'\t'<<h*b<<'\t'<<t<<'\t'<<t1<<endl;
	}
	fin.close();
	//fout<<total<<' '<<total1;
	fout.close();
	return 0;
}