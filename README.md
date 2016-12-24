# CUDAlysis-v2.0

INTRODUCTION

  Abstract

  This software package can be readily used by non-programming personal avoiding human handled chance of error. The software provides a   GUI for better understanding and user interactivity and can be used for educational purposes. The main algorithms are implemented in     C++ for CPU executions, while on CUDA C, which is a GPU processing framework for C. The frontend and the observation dashboard will be   developed in Python which provides programmer friendly sysntax for development and is also good for handling resulting data of various formats, sizes and precision levels.

  Objective
  
  The objectives of the project are:-
  
     To analyse the performance of a single processor CPU
     To analyse the performance of a multi core GPU
     To compare the performance of serial and parallel processing
     To provide a graphical and statistical analysis of different programming and processing methodologies.
     To implement various algorithms of basic and advance usage.
    
FUTURE SCOPE
   
  The software presently only provides results of implementation of the algorithms on a pre-set input file. The following functions can   be expected from the improved versions following this initial foundational release.

     User defined input of image.
     User defined output of the input.
     User defined display of results in different types of plots like line graphs, column graphs bar graphs etc.
     Implementation of many more algorithms.
     Implementation of algorithms other than Image Processing.
     Reduced fetch cycle period with usage of different library functions
  
CONCLUSION

  CUDAlysis works as an optimal solution for maintaining an interactive user-interface where the user can view and analyse the             performance of both, CPU and GPU, working with same algorithms with same input. With the display of result graphically it becomes       easier for the user to understand the difference. Including the fetch cycles, CUDA showed that it took just 81.44% time to complete     the tasks. While when fetch cycles were excluded, it took only 6.48% time to perform the same operations.

  The following result demonstrates that if the fetch cycles and thread/core synchronisation period is excluded, CUDA can perform same     operations at a far better speed than C++, thus utilizing the systems computing power optimally.
