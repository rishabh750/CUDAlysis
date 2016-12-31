#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <iostream> 
#include <fstream> 
using namespace std;
int main()
{
	ofstream fout;
	fout.open("gpuinfo.dat");
	int nDevices;
	cudaGetDeviceCount(&nDevices);
	for (int i = 0; i < nDevices; i++)
	{
		cudaDeviceProp prop;
		cudaGetDeviceProperties(&prop, i);
		fout<<"$Device Number:\t"<<i<<endl;
		fout<<"$Device name:\t"<<prop.name<<endl;
		fout<<"$Memory Clock Rate (KHz):\t"<<prop.memoryClockRate<<endl;
		fout<<"$Memory Bus Width (bits):\t"<<prop.memoryBusWidth<<endl;
		fout<<"$Peak Memory Bandwidth (GB/s):\t"<<2.0*prop.memoryClockRate*(prop.memoryBusWidth/8)/1.0e6;
	}
	fout.close();
}