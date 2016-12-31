#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <iostream>
#include <math.h>
#include <fstream>
#include <time.h>
using namespace std;
#define TILE 25
__global__ void
CUDAedge( int *a, const int b)
{
	int pos = threadIdx.x;
	if ((pos+1)%b!=0 && a[pos]!=a[pos+1])
		a[pos]=1;
	else
		a[pos]=0;
}
int main ()
{
	ifstream fin;
	fin.open("input.in");
	ofstream fout;
	fout.open("outputC.dat");
	int i,h,b,cs;
	double total=0,total1=0;
	fin>>cs;
	for (int k=1;k<=cs;k++)
	{
		clock_t st = clock();
		fin>>h>>b;
		int *ha,*da;
		int *r=new int[h*b];
		ha=new int[h*b];
		for ( i = 0 ; i<h*b ; i++ )
			fin>>ha[i];
		cudaMalloc((void **) &da, h*b*sizeof (int));
		cudaMemcpy(da,ha,h*b*sizeof(int),cudaMemcpyHostToDevice);
		clock_t st1 = clock();
		CUDAedge <<<1,h*b>>> ( da , b) ;
		cudaThreadSynchronize();
		cudaDeviceSynchronize();
		cudaFreeHost(ha);
		cudaFree(da);
		clock_t et = clock();
		double t=double(et - st)/CLOCKS_PER_SEC;
		double t1=double(et - st1)/CLOCKS_PER_SEC;
		total+=t;
		total1+=t1;
		fout<<k<<'\t'<<h<<'\t'<<b<<'\t'<<h*b<<'\t'<<t<<'\t'<<t1<<endl;
		cudaMemcpy(r,da,h*b*sizeof(int),cudaMemcpyDeviceToHost);
	}
	//fout<<total<<'\t'<<total1;
	fin.close();
	fout.close();
}